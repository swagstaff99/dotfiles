#!/bin/bash

#get Spotify's PID from wireplumber
SPOTIFYPID=$(wpctl status | grep -oP '(spotify).*(pid:)[0-9]?[0-9]{4}' | grep -oP '[0-9]?[0-9]{4}')

#Pass spotify's PID to wpctl to increase volume

wpctl set-volume -p $SPOTIFYPID 5%-

exit
