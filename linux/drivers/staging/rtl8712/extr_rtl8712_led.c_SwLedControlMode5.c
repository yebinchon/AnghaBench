
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int traffic_busy; } ;
struct mlme_priv {TYPE_2__ sitesurveyctrl; } ;
struct LED_871x {int bLedBlinkInProgress; int bLedScanBlinkInProgress; int BlinkTimes; int BlinkTimer; void* BlinkingLedState; void* CurrLedState; int bLedOn; } ;
struct led_priv {struct LED_871x SwLed1; struct LED_871x SwLed0; } ;
struct TYPE_3__ {scalar_t__ CustomerID; } ;
struct _adapter {TYPE_1__ eeprompriv; struct mlme_priv mlmepriv; struct led_priv ledpriv; } ;
typedef enum LED_CTL_MODE { ____Placeholder_LED_CTL_MODE } LED_CTL_MODE ;


 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_SCAN_INTERVAL_ALPHA ;







 void* LED_SCAN_BLINK ;
 void* LED_STATE_OFF ;
 void* LED_STATE_ON ;
 void* LED_TXRX_BLINK ;
 scalar_t__ RT_CID_819x_CAMEO ;
 int SwLedOff (struct _adapter*,struct LED_871x*) ;
 int _FW_LINKED ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void SwLedControlMode5(struct _adapter *padapter,
         enum LED_CTL_MODE LedAction)
{
 struct led_priv *ledpriv = &padapter->ledpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct LED_871x *pLed = &ledpriv->SwLed0;

 if (padapter->eeprompriv.CustomerID == RT_CID_819x_CAMEO)
  pLed = &ledpriv->SwLed1;

 switch (LedAction) {
 case 131:
 case 133:
 case 134:
  if (pLed->CurrLedState == LED_SCAN_BLINK)
   return;
  pLed->CurrLedState = LED_STATE_ON;
  pLed->BlinkingLedState = LED_STATE_ON;
  pLed->bLedBlinkInProgress = 0;
  mod_timer(&pLed->BlinkTimer,
     jiffies + msecs_to_jiffies(0));
  break;
 case 129:
  if (pmlmepriv->sitesurveyctrl.traffic_busy &&
      check_fwstate(pmlmepriv, _FW_LINKED))
   ;
  else if (!pLed->bLedScanBlinkInProgress) {
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
 case 130:
  if (!pLed->bLedBlinkInProgress) {
   if (pLed->CurrLedState == LED_SCAN_BLINK)
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
  pLed->CurrLedState = LED_STATE_OFF;
  pLed->BlinkingLedState = LED_STATE_OFF;
  if (pLed->bLedBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  SwLedOff(padapter, pLed);
  break;
 default:
  break;
 }
}
