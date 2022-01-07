
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sitesurvey_ctrl {int traffic_busy; } ;
struct mlme_priv {struct sitesurvey_ctrl sitesurveyctrl; } ;
struct LED_871x {int bLedNoLinkBlinkInProgress; int bLedLinkBlinkInProgress; int bLedBlinkInProgress; int bLedScanBlinkInProgress; int BlinkTimes; int bLedWPSBlinkInProgress; int BlinkTimer; void* BlinkingLedState; void* CurrLedState; int bLedOn; } ;
struct led_priv {struct LED_871x SwLed1; struct LED_871x SwLed0; } ;
struct TYPE_2__ {scalar_t__ CustomerID; } ;
struct _adapter {TYPE_1__ eeprompriv; struct mlme_priv mlmepriv; struct led_priv ledpriv; } ;
typedef enum LED_CTL_MODE { ____Placeholder_LED_CTL_MODE } LED_CTL_MODE ;


 int IS_LED_WPS_BLINKING (struct LED_871x*) ;
 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_LINK_INTERVAL_ALPHA ;
 void* LED_BLINK_NORMAL ;
 int LED_BLINK_NO_LINK_INTERVAL_ALPHA ;
 int LED_BLINK_SCAN_INTERVAL_ALPHA ;
 void* LED_BLINK_SLOWLY ;
 void* LED_BLINK_WPS ;
 void* LED_BLINK_WPS_STOP ;
 int LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA ;
 void* LED_SCAN_BLINK ;
 void* LED_STATE_OFF ;
 void* LED_STATE_ON ;
 void* LED_TXRX_BLINK ;
 scalar_t__ RT_CID_819x_CAMEO ;
 int _FW_LINKED ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void SwLedControlMode1(struct _adapter *padapter,
         enum LED_CTL_MODE LedAction)
{
 struct led_priv *ledpriv = &padapter->ledpriv;
 struct LED_871x *pLed = &ledpriv->SwLed0;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct sitesurvey_ctrl *psitesurveyctrl = &pmlmepriv->sitesurveyctrl;

 if (padapter->eeprompriv.CustomerID == RT_CID_819x_CAMEO)
  pLed = &ledpriv->SwLed1;
 switch (LedAction) {
 case 133:
 case 137:
  if (!pLed->bLedNoLinkBlinkInProgress) {
   if (pLed->CurrLedState == LED_SCAN_BLINK ||
       IS_LED_WPS_BLINKING(pLed))
    return;
   if (pLed->bLedLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedLinkBlinkInProgress = 0;
   }
   if (pLed->bLedBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedBlinkInProgress = 0;
   }
   pLed->bLedNoLinkBlinkInProgress = 1;
   pLed->CurrLedState = LED_BLINK_SLOWLY;
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
  }
  break;
 case 138:
  if (!pLed->bLedLinkBlinkInProgress) {
   if (pLed->CurrLedState == LED_SCAN_BLINK ||
       IS_LED_WPS_BLINKING(pLed))
    return;
   if (pLed->bLedNoLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedNoLinkBlinkInProgress = 0;
   }
   if (pLed->bLedBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedBlinkInProgress = 0;
   }
   pLed->bLedLinkBlinkInProgress = 1;
   pLed->CurrLedState = LED_BLINK_NORMAL;
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
  }
  break;
 case 134:
  if (psitesurveyctrl->traffic_busy &&
      check_fwstate(pmlmepriv, _FW_LINKED))
   ;
  else if (!pLed->bLedScanBlinkInProgress) {
   if (IS_LED_WPS_BLINKING(pLed))
    return;
   if (pLed->bLedNoLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedNoLinkBlinkInProgress = 0;
   }
   if (pLed->bLedLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedLinkBlinkInProgress = 0;
   }
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
  if (!pLed->bLedBlinkInProgress) {
   if (pLed->CurrLedState == LED_SCAN_BLINK ||
       IS_LED_WPS_BLINKING(pLed))
    return;
   if (pLed->bLedNoLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedNoLinkBlinkInProgress = 0;
   }
   if (pLed->bLedLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedLinkBlinkInProgress = 0;
   }
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
   if (pLed->bLedNoLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedNoLinkBlinkInProgress = 0;
   }
   if (pLed->bLedLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedLinkBlinkInProgress = 0;
   }
   if (pLed->bLedBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedBlinkInProgress = 0;
   }
   if (pLed->bLedScanBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedScanBlinkInProgress = 0;
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
 case 130:
  if (pLed->bLedNoLinkBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedNoLinkBlinkInProgress = 0;
  }
  if (pLed->bLedLinkBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedLinkBlinkInProgress = 0;
  }
  if (pLed->bLedBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  if (pLed->bLedScanBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedScanBlinkInProgress = 0;
  }
  if (pLed->bLedWPSBlinkInProgress)
   del_timer(&pLed->BlinkTimer);
  else
   pLed->bLedWPSBlinkInProgress = 1;
  pLed->CurrLedState = LED_BLINK_WPS_STOP;
  if (pLed->bLedOn) {
   pLed->BlinkingLedState = LED_STATE_OFF;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA));
  } else {
   pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer,
      jiffies + msecs_to_jiffies(0));
  }
  break;
 case 129:
  if (pLed->bLedWPSBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedWPSBlinkInProgress = 0;
  }
  pLed->bLedNoLinkBlinkInProgress = 1;
  pLed->CurrLedState = LED_BLINK_SLOWLY;
  if (pLed->bLedOn)
   pLed->BlinkingLedState = LED_STATE_OFF;
  else
   pLed->BlinkingLedState = LED_STATE_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
  break;
 case 136:
  pLed->CurrLedState = LED_STATE_OFF;
  pLed->BlinkingLedState = LED_STATE_OFF;
  if (pLed->bLedNoLinkBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedNoLinkBlinkInProgress = 0;
  }
  if (pLed->bLedLinkBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedLinkBlinkInProgress = 0;
  }
  if (pLed->bLedBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedBlinkInProgress = 0;
  }
  if (pLed->bLedWPSBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedWPSBlinkInProgress = 0;
  }
  if (pLed->bLedScanBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedScanBlinkInProgress = 0;
  }
  mod_timer(&pLed->BlinkTimer,
     jiffies + msecs_to_jiffies(0));
  break;
 default:
  break;
 }
}
