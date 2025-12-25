# PowerShell Script: Test Sertifikası 1 ile Başlatma
# testkurum01@test.com.tr

$ErrorActionPreference = "Stop"

# Proje root dizinine git
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent (Split-Path -Parent $scriptPath)
Set-Location $projectRoot

# Environment variables
$env:PFX_PATH = "resources\test-certs\testkurum01_rsa2048@test.com.tr_614573.pfx"
$env:CERTIFICATE_PIN = "614573"
$env:CERTIFICATE_ALIAS = "1"
$env:IS_TUBITAK_TSP = "false"

Write-Host "🔐 Test Sertifikası 1 ile başlatılıyor..." -ForegroundColor Green
Write-Host "   Email: testkurum01@test.com.tr"
Write-Host "   Parola: 614573"
Write-Host ""

# Maven'i başlat
mvn spring-boot:run

