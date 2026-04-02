#!/bin/bash

current_date=$(date --utc)
disk=$(df -h | awk 'NR==3 {print $5}' | tr -d '%')

echo "Disk usage: $disk%"

if [ "$disk" -gt 70 ]; then
    cd /tmp
    echo "Disk usage is above 70% on $current_date" >> disk_full.log
fi
