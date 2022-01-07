
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int traffic_busy; } ;
struct mlme_priv {TYPE_1__ sitesurveyctrl; } ;
struct LED_871x {int bLedWPSBlinkInProgress; int bLedStartToLinkBlinkInProgress; int bLedBlinkInProgress; int bLedNoLinkBlinkInProgress; int bLedScanBlinkInProgress; int BlinkTimes; int bLedLinkBlinkInProgress; void* BlinkingLedState; int BlinkTimer; void* CurrLedState; int bLedOn; } ;
struct led_priv {struct LED_871x SwLed1; struct LED_871x SwLed0; } ;
struct _adapter {struct mlme_priv mlmepriv; struct led_priv ledpriv; } ;
typedef enum LED_CTL_MODE { ____Placeholder_LED_CTL_MODE } LED_CTL_MODE ;


 int IS_LED_WPS_BLINKING (struct LED_871x*) ;
 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_NORMAL_INTERVAL ;
 int LED_BLINK_NO_LINK_INTERVAL_ALPHA ;
 int LED_BLINK_SCAN_INTERVAL_ALPHA ;
 void* LED_BLINK_SLOWLY ;
 int LED_BLINK_SLOWLY_INTERVAL ;
 void* LED_BLINK_StartToBlink ;
 void* LED_BLINK_WPS ;
 void* LED_BLINK_WPS_STOP ;
 void* LED_BLINK_WPS_STOP_OVERLAP ;
 void* LED_SCAN_BLINK ;
 void* LED_STATE_OFF ;
 void* LED_STATE_ON ;
 void* LED_TXRX_BLINK ;
 void* LED_UNKNOWN ;
 int SwLedOff (struct _adapter*,struct LED_871x*) ;
 int _FW_LINKED ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void SwLedControlMode4(struct _adapter *padapter,
         enum LED_CTL_MODE LedAction)
{
 struct led_priv *ledpriv = &padapter->ledpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct LED_871x *pLed = &ledpriv->SwLed0;
 struct LED_871x *pLed1 = &ledpriv->SwLed1;

 switch (LedAction) {
 case 134:
  if (pLed1->bLedWPSBlinkInProgress) {
   pLed1->bLedWPSBlinkInProgress = 0;
   del_timer(&pLed1->BlinkTimer);
   pLed1->BlinkingLedState = LED_STATE_OFF;
   pLed1->CurrLedState = LED_STATE_OFF;
   if (pLed1->bLedOn)
    mod_timer(&pLed->BlinkTimer,
       jiffies + msecs_to_jiffies(0));
  }
  if (!pLed->bLedStartToLinkBlinkInProgress) {
   if (pLed->CurrLedState == LED_SCAN_BLINK ||
       IS_LED_WPS_BLINKING(pLed))
    return;
   if (pLed->bLedBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedBlinkInProgress = 0;
   }
   if (pLed->bLedNoLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedNoLinkBlinkInProgress = 0;
   }
   pLed->bLedStartToLinkBlinkInProgress = 1;
   pLed->CurrLedState = LED_BLINK_StartToBlink;
   if (pLed->bLedOn) {
    pLed->BlinkingLedState = LED_STATE_OFF;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
   } else {
    pLed->BlinkingLedState = LED_STATE_ON;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
   }
  }
  break;
 case 139:
 case 138:

  if (LedAction == 139) {
   if (pLed1->bLedWPSBlinkInProgress) {
    pLed1->bLedWPSBlinkInProgress = 0;
    del_timer(&pLed1->BlinkTimer);
    pLed1->BlinkingLedState = LED_STATE_OFF;
    pLed1->CurrLedState = LED_STATE_OFF;
    if (pLed1->bLedOn)
     mod_timer(&pLed->BlinkTimer,
        jiffies + msecs_to_jiffies(0));
   }
  }
  if (!pLed->bLedNoLinkBlinkInProgress) {
   if (pLed->CurrLedState == LED_SCAN_BLINK ||
       IS_LED_WPS_BLINKING(pLed))
    return;
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
 case 135:
  if (pmlmepriv->sitesurveyctrl.traffic_busy &&
      check_fwstate(pmlmepriv, _FW_LINKED))
   ;
  else if (!pLed->bLedScanBlinkInProgress) {
   if (IS_LED_WPS_BLINKING(pLed))
    return;
   if (pLed->bLedNoLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedNoLinkBlinkInProgress = 0;
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
 case 136:
  if (!pLed->bLedBlinkInProgress) {
   if (pLed->CurrLedState == LED_SCAN_BLINK ||
       IS_LED_WPS_BLINKING(pLed))
    return;
   if (pLed->bLedNoLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedNoLinkBlinkInProgress = 0;
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
 case 133:
 case 132:
  if (pLed1->bLedWPSBlinkInProgress) {
   pLed1->bLedWPSBlinkInProgress = 0;
   del_timer(&pLed1->BlinkTimer);
   pLed1->BlinkingLedState = LED_STATE_OFF;
   pLed1->CurrLedState = LED_STATE_OFF;
   if (pLed1->bLedOn)
    mod_timer(&pLed->BlinkTimer,
       jiffies + msecs_to_jiffies(0));
  }
  if (!pLed->bLedWPSBlinkInProgress) {
   if (pLed->bLedNoLinkBlinkInProgress) {
    del_timer(&pLed->BlinkTimer);
    pLed->bLedNoLinkBlinkInProgress = 0;
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
   if (pLed->bLedOn) {
    pLed->BlinkingLedState = LED_STATE_OFF;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
   } else {
    pLed->BlinkingLedState = LED_STATE_ON;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
   }
  }
  break;
 case 131:
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
 case 130:
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

  if (pLed1->bLedWPSBlinkInProgress)
   del_timer(&pLed1->BlinkTimer);
  else
   pLed1->bLedWPSBlinkInProgress = 1;
  pLed1->CurrLedState = LED_BLINK_WPS_STOP;
  if (pLed1->bLedOn)
   pLed1->BlinkingLedState = LED_STATE_OFF;
  else
   pLed1->BlinkingLedState = LED_STATE_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
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

  if (pLed1->bLedWPSBlinkInProgress)
   del_timer(&pLed1->BlinkTimer);
  else
   pLed1->bLedWPSBlinkInProgress = 1;
  pLed1->CurrLedState = LED_BLINK_WPS_STOP_OVERLAP;
  pLed1->BlinkTimes = 10;
  if (pLed1->bLedOn)
   pLed1->BlinkingLedState = LED_STATE_OFF;
  else
   pLed1->BlinkingLedState = LED_STATE_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
  break;
 case 137:
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
  if (pLed->bLedStartToLinkBlinkInProgress) {
   del_timer(&pLed->BlinkTimer);
   pLed->bLedStartToLinkBlinkInProgress = 0;
  }
  if (pLed1->bLedWPSBlinkInProgress) {
   del_timer(&pLed1->BlinkTimer);
   pLed1->bLedWPSBlinkInProgress = 0;
  }
  pLed1->BlinkingLedState = LED_UNKNOWN;
  SwLedOff(padapter, pLed);
  SwLedOff(padapter, pLed1);
  break;
 default:
  break;
 }
}
