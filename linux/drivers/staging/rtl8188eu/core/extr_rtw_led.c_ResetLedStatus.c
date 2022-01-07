
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LED_871x {int bLedOn; int bLedBlinkInProgress; int bLedWPSBlinkInProgress; int bLedNoLinkBlinkInProgress; int bLedLinkBlinkInProgress; int bLedScanBlinkInProgress; int BlinkingLedState; scalar_t__ BlinkTimes; int CurrLedState; } ;


 int LED_UNKNOWN ;
 int RTW_LED_OFF ;

void ResetLedStatus(struct LED_871x *pLed)
{
 pLed->CurrLedState = RTW_LED_OFF;
 pLed->bLedOn = 0;

 pLed->bLedBlinkInProgress = 0;
 pLed->bLedWPSBlinkInProgress = 0;

 pLed->BlinkTimes = 0;
 pLed->BlinkingLedState = LED_UNKNOWN;

 pLed->bLedNoLinkBlinkInProgress = 0;
 pLed->bLedLinkBlinkInProgress = 0;
 pLed->bLedScanBlinkInProgress = 0;
}
