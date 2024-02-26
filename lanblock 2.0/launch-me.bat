@echo off
setlocal enabledelayedexpansion

:: Set the length of the progress bar
set "length=20"

:: Initialize the progress bar
set "progress="

:: Display the progress bar
for /l %%A in (1,1,%length%) do (
    set "progress=!progress!#"
    cls
    echo [!progress!]
    ping localhost -n 2 > nul
)

:: Launch the VBScript file
start "" "notification.vbs"

endlocal