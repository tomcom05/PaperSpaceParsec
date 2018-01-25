#!/bin/bash

echo "Cloud Gaming Console System"
echo "build 0203b-pi"
echo ""
echo "Starting Gaming System...."
paperspace machines start --apiKey "[CHANGEMETOAPIKEY]" --machineId "[CHANGEMETOPAPERSPACESERVERID]" > /dev/null
echo "Gaming System Started...."
echo "Waiting for Gaming System to be Ready"
paperspace machines waitfor --apiKey "[CHANGEMETOAPIKEY]" --machineId "[CHANGEMETOPAPERSPACESERVERID]" --state "ready" > /dev/null
echo "Gaming System Ready....Waiting 30 seconds...."
sleep 30
echo ""
echo "Connecting to Gaming Server!...."
parsec server_id=[CHANGEMETOPARSECID]
