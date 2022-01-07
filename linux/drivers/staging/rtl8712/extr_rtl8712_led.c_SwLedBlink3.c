
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_priv {int dummy; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;
struct LED_871x {scalar_t__ BlinkingLedState; int CurrLedState; int bLedScanBlinkInProgress; int bLedBlinkInProgress; int bLedWPSBlinkInProgress; int BlinkTimer; int bLedOn; int BlinkTimes; struct _adapter* padapter; } ;


 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_SCAN_INTERVAL_ALPHA ;


 int LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA ;

 void* LED_STATE_OFF ;
 scalar_t__ LED_STATE_ON ;

 int SwLedOff (struct _adapter*,struct LED_871x*) ;
 int SwLedOn (struct _adapter*,struct LED_871x*) ;
 int _FW_LINKED ;
 int check_fwstate (struct mlme_priv*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void SwLedBlink3(struct LED_871x *pLed)
{
 struct _adapter *padapter = pLed->padapter;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 u8 bStopBlinking = 0;


 if (pLed->BlinkingLedState == LED_STATE_ON)
  SwLedOn(padapter, pLed);
 else
  if (pLed->CurrLedState != 130)
   SwLedOff(padapter, pLed);
 switch (pLed->CurrLedState) {
 case 129:
  pLed->BlinkTimes--;
  if (pLed->BlinkTimes == 0)
   bStopBlinking = 1;
  if (bStopBlinking) {
   if (check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->CurrLedState = LED_STATE_ON;
    pLed->BlinkingLedState = LED_STATE_ON;
    if (!pLed->bLedOn)
     SwLedOn(padapter, pLed);
   } else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->CurrLedState = LED_STATE_OFF;
    pLed->BlinkingLedState = LED_STATE_OFF;
    if (pLed->bLedOn)
     SwLedOff(padapter, pLed);
   }
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
   if (check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->CurrLedState = LED_STATE_ON;
    pLed->BlinkingLedState = LED_STATE_ON;
    if (!pLed->bLedOn)
     SwLedOn(padapter, pLed);
   } else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->CurrLedState = LED_STATE_OFF;
    pLed->BlinkingLedState = LED_STATE_OFF;
    if (pLed->bLedOn)
     SwLedOff(padapter, pLed);
   }
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
 case 131:
  if (pLed->bLedOn)
   pLed->BlinkingLedState = LED_STATE_OFF;
  else
   pLed->BlinkingLedState = LED_STATE_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
  break;
 case 130:
  if (pLed->BlinkingLedState == LED_STATE_ON) {
   pLed->BlinkingLedState = LED_STATE_OFF;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
   bStopBlinking = 0;
  } else {
   bStopBlinking = 1;
  }
  if (bStopBlinking) {
   pLed->CurrLedState = LED_STATE_ON;
   pLed->BlinkingLedState = LED_STATE_ON;
   SwLedOn(padapter, pLed);
   pLed->bLedWPSBlinkInProgress = 0;
  }
  break;
 default:
  break;
 }
}
