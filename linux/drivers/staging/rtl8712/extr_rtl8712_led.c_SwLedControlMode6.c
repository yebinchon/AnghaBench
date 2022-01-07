
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int dummy; } ;
struct LED_871x {int bLedBlinkInProgress; int BlinkTimes; int bLedWPSBlinkInProgress; int BlinkTimer; void* BlinkingLedState; void* CurrLedState; int bLedOn; } ;
struct led_priv {struct LED_871x SwLed0; } ;
struct _adapter {struct mlme_priv mlmepriv; struct led_priv ledpriv; } ;
typedef enum LED_CTL_MODE { ____Placeholder_LED_CTL_MODE } LED_CTL_MODE ;


 int IS_LED_WPS_BLINKING (struct LED_871x*) ;
 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_SCAN_INTERVAL_ALPHA ;
 void* LED_BLINK_WPS ;
 void* LED_STATE_OFF ;
 void* LED_STATE_ON ;
 void* LED_TXRX_BLINK ;
 int SwLedOff (struct _adapter*,struct LED_871x*) ;
 int _FW_LINKED ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void SwLedControlMode6(struct _adapter *padapter,
         enum LED_CTL_MODE LedAction)
{
 struct led_priv *ledpriv = &padapter->ledpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct LED_871x *pLed = &ledpriv->SwLed0;

 switch (LedAction) {
 case 135:
 case 137:
 case 138:
 case 133:
  if (IS_LED_WPS_BLINKING(pLed))
   return;
  pLed->CurrLedState = LED_STATE_ON;
  pLed->BlinkingLedState = LED_STATE_ON;
  pLed->bLedBlinkInProgress = 0;
  mod_timer(&pLed->BlinkTimer, jiffies + msecs_to_jiffies(0));
  break;
 case 128:
 case 134:
  if (!pLed->bLedBlinkInProgress &&
      check_fwstate(pmlmepriv, _FW_LINKED)) {
   if (IS_LED_WPS_BLINKING(pLed))
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
 case 132:
 case 131:
  if (!pLed->bLedWPSBlinkInProgress) {
   if (pLed->bLedBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedBlinkInProgress = 0;
   }
   pLed->bLedWPSBlinkInProgress = 1;
   pLed->CurrLedState = LED_BLINK_WPS;
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
  }
  break;
 case 129:
 case 130:
  if (pLed->bLedWPSBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedWPSBlinkInProgress = 0;
  }
  pLed->CurrLedState = LED_STATE_ON;
  pLed->BlinkingLedState = LED_STATE_ON;
  mod_timer(&pLed->BlinkTimer,
     jiffies + msecs_to_jiffies(0));
  break;
 case 136:
  pLed->CurrLedState = LED_STATE_OFF;
  pLed->BlinkingLedState = LED_STATE_OFF;
  if (pLed->bLedBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  if (pLed->bLedWPSBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedWPSBlinkInProgress = 0;
  }
  SwLedOff(padapter, pLed);
  break;
 default:
  break;
 }
}
