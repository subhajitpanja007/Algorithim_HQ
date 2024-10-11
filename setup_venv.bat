@echo off

REM List all Python versions installed
py --list

REM Create the virtual environment with the specified Python version
py -3.8 -m venv .venv

REM Check if the virtual environment was created successfully
if exist ".venv\Scripts\activate" (
    echo Virtual environment created successfully.
    
    REM Activate the virtual environment
    call .venv\Scripts\activate
    
    REM Check the Python version to confirm the correct environment is active
    python --version
) else (
    echo Failed to create virtual environment.
)

REM Explanation of the pause command:
REM The pause command is used to keep the Command Prompt window open after the batch file has finished executing.
REM This way, you can see the output and any messages displayed, rather than the window closing immediately.
REM When pause is encountered, it displays the message "Press any key to continue . . ." and waits for you to press a key before proceeding, ensuring you can review the script’s output.

pause
