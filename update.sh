#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

files=(
    08-Late-Night.png
    01-Morning.png
    02-Late-Morning.png
    03-Afternoon.png
    04-Late-Afternoon.png
    05-Evening.png
    06-Late-Evening.png
    07-Night.png
    08-Late-Night.png
)

#Timings for the backgrounds in order. Your life may vary.
timing=(
    0
    7
    10
    12
    17
    18
    19
    21
    23
)

hour=`date +%k`

setcmd="pcmanfm -w"

for i in {8..0..-1}
do
    if [[ $hour -ge ${timing[i]} ]]; then
        $setcmd $DIR/${files[i]}
        echo "Wallpaper set to $DIR/${files[i]}"
        exit
    fi
done

$setcmd $DIR/${file[8]}
echo "Wallpaper set to $DIR/${file[8]}"
