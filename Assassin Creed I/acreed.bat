@echo off
c:

for /f "tokens=2* delims= " %%a in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v personal') do set MyDocs="%%b"
echo My Documents points to %MyDocs%

if not exist "%appdata%/Ubisoft/Assassin's Creed" mkdir "%appdata%/Ubisoft/Assassin's Creed"
if not exist "%appdata%/Ubisoft/Assassin's Creed/Assassin.ini" copy "c:\tmp\Assassin.ini" "%appdata%/Ubisoft/Assassin's Creed/"
echo appdata points to %appdata%

"c:\program files (x86)\steam\steam.exe" -no-browser steam://run/15100





