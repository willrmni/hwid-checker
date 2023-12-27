@echo off
title willrmni's HWID Checker
color F
mode 120, 45
:start
cls
echo ----------------- Disk -----------------
echo.
wmic diskdrive get serialnumber
echo ------------- Motherboard --------------
echo.
wmic baseboard get serialnumber
echo ----------------- BIOS -----------------
echo.
wmic bios get serialnumber
echo ------------- smBIOS UUID --------------
echo.
wmic path win32_computersystemproduct get uuid
echo ----------------- CPU ------------------
echo.
wmic cpu get serialnumber
echo ----------------- RAM ------------------
echo.
wmic memorychip get serialnumber
echo -------------- The End! ----------------
echo.
echo Press any key to get your refresh.
pause>nul
goto start
