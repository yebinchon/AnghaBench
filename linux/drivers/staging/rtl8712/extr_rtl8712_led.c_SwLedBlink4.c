
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct LED_871x {scalar_t__ BlinkingLedState; int CurrLedState; int BlinkTimes; int bLedNoLinkBlinkInProgress; int bLedScanBlinkInProgress; int bLedBlinkInProgress; int BlinkTimer; int bLedOn; int bLedWPSBlinkInProgress; struct _adapter* padapter; } ;
struct led_priv {struct LED_871x SwLed1; } ;
struct _adapter {struct led_priv ledpriv; } ;


 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_LINK_INTERVAL_ALPHA ;
 int LED_BLINK_NORMAL_INTERVAL ;
 int LED_BLINK_NO_LINK_INTERVAL_ALPHA ;
 int LED_BLINK_SCAN_INTERVAL_ALPHA ;

 int LED_BLINK_SLOWLY_INTERVAL ;





 void* LED_STATE_OFF ;
 scalar_t__ LED_STATE_ON ;

 scalar_t__ LED_UNKNOWN ;
 int SwLedOff (struct _adapter*,struct LED_871x*) ;
 int SwLedOn (struct _adapter*,struct LED_871x*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void SwLedBlink4(struct LED_871x *pLed)
{
 struct _adapter *padapter = pLed->padapter;
 struct led_priv *ledpriv = &padapter->ledpriv;
 struct LED_871x *pLed1 = &ledpriv->SwLed1;
 u8 bStopBlinking = 0;


 if (pLed->BlinkingLedState == LED_STATE_ON)
  SwLedOn(padapter, pLed);
 else
  SwLedOff(padapter, pLed);
 if (!pLed1->bLedWPSBlinkInProgress &&
     pLed1->BlinkingLedState == LED_UNKNOWN) {
  pLed1->BlinkingLedState = LED_STATE_OFF;
  pLed1->CurrLedState = LED_STATE_OFF;
  SwLedOff(padapter, pLed1);
 }
 switch (pLed->CurrLedState) {
 case 134:
  if (pLed->bLedOn)
   pLed->BlinkingLedState = LED_STATE_OFF;
  else
   pLed->BlinkingLedState = LED_STATE_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
  break;
 case 133:
  if (pLed->bLedOn) {
   pLed->BlinkingLedState = LED_STATE_OFF;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
  } else {
   pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
  }
  break;
 case 129:
  pLed->BlinkTimes--;
  if (pLed->BlinkTimes == 0)
   bStopBlinking = 1;
  if (bStopBlinking) {
   pLed->bLedNoLinkBlinkInProgress = 1;
   pLed->CurrLedState = 134;
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
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
   pLed->bLedNoLinkBlinkInProgress = 1;
   pLed->CurrLedState = 134;
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
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
 case 132:
  if (pLed->bLedOn) {
   pLed->BlinkingLedState = LED_STATE_OFF;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
  } else {
   pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
  }
  break;
 case 131:
  if (pLed->bLedOn)
   pLed->BlinkingLedState = LED_STATE_OFF;
  else
   pLed->BlinkingLedState = LED_STATE_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
  break;
 case 130:
  pLed->BlinkTimes--;
  if (pLed->BlinkTimes == 0) {
   if (pLed->bLedOn)
    pLed->BlinkTimes = 1;
   else
    bStopBlinking = 1;
  }
  if (bStopBlinking) {
   pLed->BlinkTimes = 10;
   pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
  } else {
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
  }
  break;
 default:
  break;
 }
}
