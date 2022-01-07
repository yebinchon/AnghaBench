
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int traffic_busy; } ;
struct mlme_priv {TYPE_1__ sitesurveyctrl; } ;
struct LED_871x {int bLedScanBlinkInProgress; int bLedBlinkInProgress; int BlinkTimes; int bLedWPSBlinkInProgress; int BlinkTimer; void* BlinkingLedState; void* CurrLedState; int bLedOn; } ;
struct led_priv {struct LED_871x SwLed0; } ;
struct _adapter {struct mlme_priv mlmepriv; struct led_priv ledpriv; } ;
typedef enum LED_CTL_MODE { ____Placeholder_LED_CTL_MODE } LED_CTL_MODE ;


 int IS_LED_BLINKING (struct LED_871x*) ;
 int IS_LED_WPS_BLINKING (struct LED_871x*) ;
 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_SCAN_INTERVAL_ALPHA ;
 void* LED_SCAN_BLINK ;
 void* LED_STATE_OFF ;
 void* LED_STATE_ON ;
 void* LED_TXRX_BLINK ;
 int _FW_LINKED ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void SwLedControlMode2(struct _adapter *padapter,
         enum LED_CTL_MODE LedAction)
{
 struct led_priv *ledpriv = &padapter->ledpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct LED_871x *pLed = &ledpriv->SwLed0;

 switch (LedAction) {
 case 134:
  if (pmlmepriv->sitesurveyctrl.traffic_busy)
   ;
  else if (!pLed->bLedScanBlinkInProgress) {
   if (IS_LED_WPS_BLINKING(pLed))
    return;

   if (pLed->bLedBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedBlinkInProgress = 0;
   }
   pLed->bLedScanBlinkInProgress = 1;
   pLed->CurrLedState = LED_SCAN_BLINK;
   pLed->BlinkTimes = 24;
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
  }
  break;

 case 128:
 case 135:
  if (!pLed->bLedBlinkInProgress &&
      check_fwstate(pmlmepriv, _FW_LINKED)) {
   if (pLed->CurrLedState == LED_SCAN_BLINK ||
       IS_LED_WPS_BLINKING(pLed))
    return;
   pLed->bLedBlinkInProgress = 1;
   pLed->CurrLedState = LED_TXRX_BLINK;
   pLed->BlinkTimes = 2;
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
  }
  break;

 case 138:
  pLed->CurrLedState = LED_STATE_ON;
  pLed->BlinkingLedState = LED_STATE_ON;
  if (pLed->bLedBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  if (pLed->bLedScanBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedScanBlinkInProgress = 0;
  }

  mod_timer(&pLed->BlinkTimer,
     jiffies + msecs_to_jiffies(0));
  break;

 case 132:
 case 131:
  if (!pLed->bLedWPSBlinkInProgress) {
   if (pLed->bLedBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedBlinkInProgress = 0;
   }
   if (pLed->bLedScanBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedScanBlinkInProgress = 0;
   }
   pLed->bLedWPSBlinkInProgress = 1;
   pLed->CurrLedState = LED_STATE_ON;
   pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer,
      jiffies + msecs_to_jiffies(0));
  }
  break;

 case 130:
  pLed->bLedWPSBlinkInProgress = 0;
  pLed->CurrLedState = LED_STATE_ON;
  pLed->BlinkingLedState = LED_STATE_ON;
  mod_timer(&pLed->BlinkTimer,
     jiffies + msecs_to_jiffies(0));
  break;

 case 129:
  pLed->bLedWPSBlinkInProgress = 0;
  pLed->CurrLedState = LED_STATE_OFF;
  pLed->BlinkingLedState = LED_STATE_OFF;
  mod_timer(&pLed->BlinkTimer,
     jiffies + msecs_to_jiffies(0));
  break;

 case 133:
 case 137:
  if (!IS_LED_BLINKING(pLed)) {
   pLed->CurrLedState = LED_STATE_OFF;
   pLed->BlinkingLedState = LED_STATE_OFF;
   mod_timer(&pLed->BlinkTimer,
      jiffies + msecs_to_jiffies(0));
  }
  break;
 case 136:
  pLed->CurrLedState = LED_STATE_OFF;
  pLed->BlinkingLedState = LED_STATE_OFF;
  if (pLed->bLedBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  if (pLed->bLedScanBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedScanBlinkInProgress = 0;
  }
  if (pLed->bLedWPSBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedWPSBlinkInProgress = 0;
  }
  mod_timer(&pLed->BlinkTimer,
     jiffies + msecs_to_jiffies(0));
  break;
 default:
  break;
 }
}
