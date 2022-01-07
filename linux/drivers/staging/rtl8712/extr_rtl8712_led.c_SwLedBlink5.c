
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct _adapter {int dummy; } ;
struct LED_871x {scalar_t__ BlinkingLedState; int CurrLedState; int bLedScanBlinkInProgress; int bLedBlinkInProgress; int BlinkTimer; int bLedOn; int BlinkTimes; struct _adapter* padapter; } ;


 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_SCAN_INTERVAL_ALPHA ;

 void* LED_STATE_OFF ;
 scalar_t__ LED_STATE_ON ;

 int SwLedOff (struct _adapter*,struct LED_871x*) ;
 int SwLedOn (struct _adapter*,struct LED_871x*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void SwLedBlink5(struct LED_871x *pLed)
{
 struct _adapter *padapter = pLed->padapter;
 u8 bStopBlinking = 0;


 if (pLed->BlinkingLedState == LED_STATE_ON)
  SwLedOn(padapter, pLed);
 else
  SwLedOff(padapter, pLed);
 switch (pLed->CurrLedState) {
 case 129:
  pLed->BlinkTimes--;
  if (pLed->BlinkTimes == 0)
   bStopBlinking = 1;
  if (bStopBlinking) {
   pLed->CurrLedState = LED_STATE_ON;
   pLed->BlinkingLedState = LED_STATE_ON;
   if (!pLed->bLedOn)
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
   pLed->bLedScanBlinkInProgress = 0;
  } else {
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
  }
  break;
 case 128:
  pLed->BlinkTimes--;
  if (pLed->BlinkTimes == 0)
   bStopBlinking = 1;
  if (bStopBlinking) {
   pLed->CurrLedState = LED_STATE_ON;
   pLed->BlinkingLedState = LED_STATE_ON;
   if (!pLed->bLedOn)
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
   pLed->bLedBlinkInProgress = 0;
  } else {
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
  }
  break;
 default:
  break;
 }
}
