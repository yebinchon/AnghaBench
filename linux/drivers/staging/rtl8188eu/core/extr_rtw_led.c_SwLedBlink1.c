
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlme_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ rf_pwrstate; } ;
struct adapter {TYPE_1__ pwrctrlpriv; struct mlme_priv mlmepriv; } ;
struct LED_871x {scalar_t__ BlinkingLedState; int CurrLedState; int bLedLinkBlinkInProgress; int bLedNoLinkBlinkInProgress; int bLedScanBlinkInProgress; int bLedBlinkInProgress; int bLedWPSBlinkInProgress; int BlinkTimer; int bLedOn; int BlinkTimes; struct adapter* padapter; } ;


 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_LINK_INTERVAL_ALPHA ;

 int LED_BLINK_NO_LINK_INTERVAL_ALPHA ;

 int LED_BLINK_SCAN_INTERVAL_ALPHA ;




 int LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA ;
 void* RTW_LED_OFF ;
 scalar_t__ RTW_LED_ON ;
 int RT_TRACE (int ,int ,char*) ;
 int ResetLedStatus (struct LED_871x*) ;
 int _FW_LINKED ;
 int _drv_info_ ;
 int _module_rtl8712_led_c_ ;
 int check_fwstate (struct mlme_priv*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ rf_on ;
 int sw_led_off (struct adapter*,struct LED_871x*) ;
 int sw_led_on (struct adapter*,struct LED_871x*) ;

__attribute__((used)) static void SwLedBlink1(struct LED_871x *pLed)
{
 struct adapter *padapter = pLed->padapter;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 u8 bStopBlinking = 0;


 if (pLed->BlinkingLedState == RTW_LED_ON) {
  sw_led_on(padapter, pLed);
  RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
    ("Blinktimes (%d): turn on\n", pLed->BlinkTimes));
 } else {
  sw_led_off(padapter, pLed);
  RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
    ("Blinktimes (%d): turn off\n", pLed->BlinkTimes));
 }

 if (padapter->pwrctrlpriv.rf_pwrstate != rf_on) {
  sw_led_off(padapter, pLed);
  ResetLedStatus(pLed);
  return;
 }

 switch (pLed->CurrLedState) {
 case 131:
  if (pLed->bLedOn)
   pLed->BlinkingLedState = RTW_LED_OFF;
  else
   pLed->BlinkingLedState = RTW_LED_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
  break;
 case 133:
  if (pLed->bLedOn)
   pLed->BlinkingLedState = RTW_LED_OFF;
  else
   pLed->BlinkingLedState = RTW_LED_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
  break;
 case 132:
  pLed->BlinkTimes--;
  if (pLed->BlinkTimes == 0)
   bStopBlinking = 1;
  if (bStopBlinking) {
   if (check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->bLedLinkBlinkInProgress = 1;
    pLed->CurrLedState = 133;
    if (pLed->bLedOn)
     pLed->BlinkingLedState = RTW_LED_OFF;
    else
     pLed->BlinkingLedState = RTW_LED_ON;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
    RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
   } else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->bLedNoLinkBlinkInProgress = 1;
    pLed->CurrLedState = 131;
    if (pLed->bLedOn)
     pLed->BlinkingLedState = RTW_LED_OFF;
    else
     pLed->BlinkingLedState = RTW_LED_ON;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
    RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
   }
   pLed->bLedScanBlinkInProgress = 0;
  } else {
   if (pLed->bLedOn)
    pLed->BlinkingLedState = RTW_LED_OFF;
   else
    pLed->BlinkingLedState = RTW_LED_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
  }
  break;
 case 130:
  pLed->BlinkTimes--;
  if (pLed->BlinkTimes == 0)
   bStopBlinking = 1;
  if (bStopBlinking) {
   if (check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->bLedLinkBlinkInProgress = 1;
    pLed->CurrLedState = 133;
    if (pLed->bLedOn)
     pLed->BlinkingLedState = RTW_LED_OFF;
    else
     pLed->BlinkingLedState = RTW_LED_ON;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
    RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
   } else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->bLedNoLinkBlinkInProgress = 1;
    pLed->CurrLedState = 131;
    if (pLed->bLedOn)
     pLed->BlinkingLedState = RTW_LED_OFF;
    else
     pLed->BlinkingLedState = RTW_LED_ON;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
    RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));
   }
   pLed->BlinkTimes = 0;
   pLed->bLedBlinkInProgress = 0;
  } else {
   if (pLed->bLedOn)
    pLed->BlinkingLedState = RTW_LED_OFF;
   else
    pLed->BlinkingLedState = RTW_LED_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
  }
  break;
 case 129:
  if (pLed->bLedOn)
   pLed->BlinkingLedState = RTW_LED_OFF;
  else
   pLed->BlinkingLedState = RTW_LED_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
  break;
 case 128:
  if (pLed->BlinkingLedState == RTW_LED_ON)
   bStopBlinking = 0;
  else
   bStopBlinking = 1;

  if (bStopBlinking) {
   pLed->bLedLinkBlinkInProgress = 1;
   pLed->CurrLedState = 133;
   if (pLed->bLedOn)
    pLed->BlinkingLedState = RTW_LED_OFF;
   else
    pLed->BlinkingLedState = RTW_LED_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
   RT_TRACE(_module_rtl8712_led_c_, _drv_info_, ("CurrLedState %d\n", pLed->CurrLedState));

   pLed->bLedWPSBlinkInProgress = 0;
  } else {
   pLed->BlinkingLedState = RTW_LED_OFF;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
  }
  break;
 default:
  break;
 }
}
