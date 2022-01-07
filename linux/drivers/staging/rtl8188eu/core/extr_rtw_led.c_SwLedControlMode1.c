
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bBusyTraffic; } ;
struct mlme_priv {TYPE_1__ LinkDetectInfo; } ;
struct LED_871x {int bLedNoLinkBlinkInProgress; int bLedLinkBlinkInProgress; int bLedBlinkInProgress; int bLedScanBlinkInProgress; int BlinkTimes; int bLedWPSBlinkInProgress; void* CurrLedState; int BlinkTimer; void* BlinkingLedState; int bLedOn; } ;
struct led_priv {struct LED_871x sw_led; } ;
struct adapter {struct mlme_priv mlmepriv; struct led_priv ledpriv; } ;
typedef enum LED_CTL_MODE { ____Placeholder_LED_CTL_MODE } LED_CTL_MODE ;


 int IS_LED_WPS_BLINKING (struct LED_871x*) ;
 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_LINK_INTERVAL_ALPHA ;
 void* LED_BLINK_NORMAL ;
 int LED_BLINK_NO_LINK_INTERVAL_ALPHA ;
 void* LED_BLINK_SCAN ;
 int LED_BLINK_SCAN_INTERVAL_ALPHA ;
 void* LED_BLINK_SLOWLY ;
 void* LED_BLINK_TXRX ;
 void* LED_BLINK_WPS ;
 void* LED_BLINK_WPS_STOP ;
 int LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA ;
 void* RTW_LED_OFF ;
 void* RTW_LED_ON ;
 int RT_TRACE (int ,int ,char*) ;
 int _FW_LINKED ;
 int _drv_info_ ;
 int _module_rtl8712_led_c_ ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int sw_led_off (struct adapter*,struct LED_871x*) ;

__attribute__((used)) static void SwLedControlMode1(struct adapter *padapter, enum LED_CTL_MODE LedAction)
{
 struct led_priv *ledpriv = &padapter->ledpriv;
 struct LED_871x *pLed = &ledpriv->sw_led;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 switch (LedAction) {
 case 136:
 case 133:
 case 138:
  if (pLed->bLedNoLinkBlinkInProgress)
   break;
  if (pLed->CurrLedState == LED_BLINK_SCAN ||
      IS_LED_WPS_BLINKING(pLed))
   return;
  if (pLed->bLedLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedLinkBlinkInProgress = 0;
  }
  if (pLed->bLedBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  pLed->bLedNoLinkBlinkInProgress = 1;
  pLed->CurrLedState = LED_BLINK_SLOWLY;
  if (pLed->bLedOn)
   pLed->BlinkingLedState = RTW_LED_OFF;
  else
   pLed->BlinkingLedState = RTW_LED_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
  break;
 case 139:
  if (pLed->bLedLinkBlinkInProgress)
   break;
  if (pLed->CurrLedState == LED_BLINK_SCAN ||
      IS_LED_WPS_BLINKING(pLed))
   return;
  if (pLed->bLedNoLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedNoLinkBlinkInProgress = 0;
  }
  if (pLed->bLedBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  pLed->bLedLinkBlinkInProgress = 1;
  pLed->CurrLedState = LED_BLINK_NORMAL;
  if (pLed->bLedOn)
   pLed->BlinkingLedState = RTW_LED_OFF;
  else
   pLed->BlinkingLedState = RTW_LED_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
  break;
 case 134:
  if (pmlmepriv->LinkDetectInfo.bBusyTraffic &&
      check_fwstate(pmlmepriv, _FW_LINKED))
   break;
  if (pLed->bLedScanBlinkInProgress)
   break;
  if (IS_LED_WPS_BLINKING(pLed))
   return;
  if (pLed->bLedNoLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedNoLinkBlinkInProgress = 0;
  }
  if (pLed->bLedLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedLinkBlinkInProgress = 0;
  }
  if (pLed->bLedBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  pLed->bLedScanBlinkInProgress = 1;
  pLed->CurrLedState = LED_BLINK_SCAN;
  pLed->BlinkTimes = 24;
  if (pLed->bLedOn)
   pLed->BlinkingLedState = RTW_LED_OFF;
  else
   pLed->BlinkingLedState = RTW_LED_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
  break;
 case 128:
 case 135:
  if (pLed->bLedBlinkInProgress)
   break;
  if (pLed->CurrLedState == LED_BLINK_SCAN ||
      IS_LED_WPS_BLINKING(pLed))
   return;
  if (pLed->bLedNoLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedNoLinkBlinkInProgress = 0;
  }
  if (pLed->bLedLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedLinkBlinkInProgress = 0;
  }
  pLed->bLedBlinkInProgress = 1;
  pLed->CurrLedState = LED_BLINK_TXRX;
  pLed->BlinkTimes = 2;
  if (pLed->bLedOn)
   pLed->BlinkingLedState = RTW_LED_OFF;
  else
   pLed->BlinkingLedState = RTW_LED_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_FASTER_INTERVAL_ALPHA));
  break;
 case 132:
 case 131:
  if (pLed->bLedWPSBlinkInProgress)
   break;
  if (pLed->bLedNoLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedNoLinkBlinkInProgress = 0;
  }
  if (pLed->bLedLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedLinkBlinkInProgress = 0;
  }
  if (pLed->bLedBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  if (pLed->bLedScanBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedScanBlinkInProgress = 0;
  }
  pLed->bLedWPSBlinkInProgress = 1;
  pLed->CurrLedState = LED_BLINK_WPS;
  if (pLed->bLedOn)
   pLed->BlinkingLedState = RTW_LED_OFF;
  else
   pLed->BlinkingLedState = RTW_LED_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
  break;
 case 130:
  if (pLed->bLedNoLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedNoLinkBlinkInProgress = 0;
  }
  if (pLed->bLedLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedLinkBlinkInProgress = 0;
  }
  if (pLed->bLedBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  if (pLed->bLedScanBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedScanBlinkInProgress = 0;
  }
  if (pLed->bLedWPSBlinkInProgress)
   del_timer_sync(&pLed->BlinkTimer);
  else
   pLed->bLedWPSBlinkInProgress = 1;
  pLed->CurrLedState = LED_BLINK_WPS_STOP;
  if (pLed->bLedOn) {
   pLed->BlinkingLedState = RTW_LED_OFF;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
  } else {
   pLed->BlinkingLedState = RTW_LED_ON;
   mod_timer(&pLed->BlinkTimer,
      jiffies + msecs_to_jiffies(0));
  }
  break;
 case 129:
  if (pLed->bLedWPSBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedWPSBlinkInProgress = 0;
  }
  pLed->bLedNoLinkBlinkInProgress = 1;
  pLed->CurrLedState = LED_BLINK_SLOWLY;
  if (pLed->bLedOn)
   pLed->BlinkingLedState = RTW_LED_OFF;
  else
   pLed->BlinkingLedState = RTW_LED_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
  break;
 case 137:
  pLed->CurrLedState = RTW_LED_OFF;
  pLed->BlinkingLedState = RTW_LED_OFF;
  if (pLed->bLedNoLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedNoLinkBlinkInProgress = 0;
  }
  if (pLed->bLedLinkBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedLinkBlinkInProgress = 0;
  }
  if (pLed->bLedBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  if (pLed->bLedWPSBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedWPSBlinkInProgress = 0;
  }
  if (pLed->bLedScanBlinkInProgress) {
   del_timer_sync(&pLed->BlinkTimer);
   pLed->bLedScanBlinkInProgress = 0;
  }
  sw_led_off(padapter, pLed);
  break;
 default:
  break;
 }

 RT_TRACE(_module_rtl8712_led_c_, _drv_info_,
   ("Led %d\n", pLed->CurrLedState));
}
