
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_priv {int dummy; } ;
struct LED_871x {scalar_t__ BlinkingLedState; int bSWLedCtrl; int CurrLedState; int bLedLinkBlinkInProgress; int bLedNoLinkBlinkInProgress; int bLedScanBlinkInProgress; int bLedBlinkInProgress; int bLedWPSBlinkInProgress; int BlinkTimer; scalar_t__ bLedOn; int BlinkTimes; struct _adapter* padapter; } ;
struct led_priv {struct LED_871x SwLed1; } ;
struct eeprom_priv {scalar_t__ CustomerID; } ;
struct _adapter {struct eeprom_priv eeprompriv; struct mlme_priv mlmepriv; struct led_priv ledpriv; } ;


 int LED_BLINK_FASTER_INTERVAL_ALPHA ;
 int LED_BLINK_LINK_INTERVAL_ALPHA ;

 int LED_BLINK_NO_LINK_INTERVAL_ALPHA ;
 int LED_BLINK_SCAN_INTERVAL_ALPHA ;



 int LED_BLINK_WPS_SUCCESS_INTERVAL_ALPHA ;

 void* LED_STATE_OFF ;
 scalar_t__ LED_STATE_ON ;

 scalar_t__ RT_CID_819x_CAMEO ;
 scalar_t__ RT_CID_DEFAULT ;
 int SwLedOff (struct _adapter*,struct LED_871x*) ;
 int SwLedOn (struct _adapter*,struct LED_871x*) ;
 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void SwLedBlink1(struct LED_871x *pLed)
{
 struct _adapter *padapter = pLed->padapter;
 struct led_priv *ledpriv = &padapter->ledpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct eeprom_priv *peeprompriv = &padapter->eeprompriv;
 struct LED_871x *pLed1 = &ledpriv->SwLed1;
 u8 bStopBlinking = 0;

 if (peeprompriv->CustomerID == RT_CID_819x_CAMEO)
  pLed = &ledpriv->SwLed1;

 if (pLed->BlinkingLedState == LED_STATE_ON)
  SwLedOn(padapter, pLed);
 else
  SwLedOff(padapter, pLed);
 if (peeprompriv->CustomerID == RT_CID_DEFAULT) {
  if (check_fwstate(pmlmepriv, _FW_LINKED)) {
   if (!pLed1->bSWLedCtrl) {
    SwLedOn(padapter, pLed1);
    pLed1->bSWLedCtrl = 1;
   } else if (!pLed1->bLedOn) {
    SwLedOn(padapter, pLed1);
   }
  } else {
   if (!pLed1->bSWLedCtrl) {
    SwLedOff(padapter, pLed1);
    pLed1->bSWLedCtrl = 1;
   } else if (pLed1->bLedOn) {
    SwLedOff(padapter, pLed1);
   }
  }
 }
 switch (pLed->CurrLedState) {
 case 132:
  if (pLed->bLedOn)
   pLed->BlinkingLedState = LED_STATE_OFF;
  else
   pLed->BlinkingLedState = LED_STATE_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
  break;
 case 133:
  if (pLed->bLedOn)
   pLed->BlinkingLedState = LED_STATE_OFF;
  else
   pLed->BlinkingLedState = LED_STATE_ON;
  mod_timer(&pLed->BlinkTimer, jiffies +
     msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
  break;
 case 129:
  pLed->BlinkTimes--;
  if (pLed->BlinkTimes == 0)
   bStopBlinking = 1;
  if (bStopBlinking) {
   if (check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->bLedLinkBlinkInProgress = 1;
    pLed->CurrLedState = 133;
    if (pLed->bLedOn)
     pLed->BlinkingLedState = LED_STATE_OFF;
    else
     pLed->BlinkingLedState = LED_STATE_ON;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
   } else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->bLedNoLinkBlinkInProgress = 1;
    pLed->CurrLedState = 132;
    if (pLed->bLedOn)
     pLed->BlinkingLedState = LED_STATE_OFF;
    else
     pLed->BlinkingLedState = LED_STATE_ON;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
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
    pLed->bLedLinkBlinkInProgress = 1;
    pLed->CurrLedState = 133;
    if (pLed->bLedOn)
     pLed->BlinkingLedState = LED_STATE_OFF;
    else
     pLed->BlinkingLedState = LED_STATE_ON;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
   } else if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
    pLed->bLedNoLinkBlinkInProgress = 1;
    pLed->CurrLedState = 132;
    if (pLed->bLedOn)
     pLed->BlinkingLedState = LED_STATE_OFF;
    else
     pLed->BlinkingLedState = LED_STATE_ON;
    mod_timer(&pLed->BlinkTimer, jiffies +
       msecs_to_jiffies(LED_BLINK_NO_LINK_INTERVAL_ALPHA));
   }
   pLed->BlinkTimes = 0;
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
   pLed->bLedLinkBlinkInProgress = 1;
   pLed->CurrLedState = 133;
   if (pLed->bLedOn)
    pLed->BlinkingLedState = LED_STATE_OFF;
   else
    pLed->BlinkingLedState = LED_STATE_ON;
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_LINK_INTERVAL_ALPHA));
  }
  pLed->bLedWPSBlinkInProgress = 0;
  break;
 default:
  break;
 }
}
