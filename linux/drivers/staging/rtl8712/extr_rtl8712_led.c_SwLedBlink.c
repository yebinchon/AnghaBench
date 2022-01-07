
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_priv {int fw_state; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;
struct LED_871x {scalar_t__ BlinkingLedState; scalar_t__ BlinkTimes; int CurrLedState; int bLedBlinkInProgress; int BlinkTimer; scalar_t__ bLedOn; struct _adapter* padapter; } ;


 int LED_BLINK_LONG_INTERVAL ;

 int LED_BLINK_NORMAL_INTERVAL ;

 int LED_BLINK_SLOWLY_INTERVAL ;


 scalar_t__ LED_STATE_OFF ;
 scalar_t__ LED_STATE_ON ;
 int SwLedOff (struct _adapter*,struct LED_871x*) ;
 int SwLedOn (struct _adapter*,struct LED_871x*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_STATION_STATE ;
 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void SwLedBlink(struct LED_871x *pLed)
{
 struct _adapter *padapter = pLed->padapter;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 u8 bStopBlinking = 0;


 if (pLed->BlinkingLedState == LED_STATE_ON)
  SwLedOn(padapter, pLed);
 else
  SwLedOff(padapter, pLed);

 pLed->BlinkTimes--;
 switch (pLed->CurrLedState) {
 case 131:
  if (pLed->BlinkTimes == 0)
   bStopBlinking = 1;
  break;
 case 129:
  if (check_fwstate(pmlmepriv, _FW_LINKED) &&
      (pmlmepriv->fw_state & WIFI_STATION_STATE))
   bStopBlinking = 1;
  if (check_fwstate(pmlmepriv, _FW_LINKED) &&
      ((pmlmepriv->fw_state & WIFI_ADHOC_STATE) ||
      (pmlmepriv->fw_state & WIFI_ADHOC_MASTER_STATE)))
   bStopBlinking = 1;
  else if (pLed->BlinkTimes == 0)
   bStopBlinking = 1;
  break;
 case 128:
  if (pLed->BlinkTimes == 0)
   bStopBlinking = 1;
  break;
 default:
  bStopBlinking = 1;
  break;
 }
 if (bStopBlinking) {
  if (check_fwstate(pmlmepriv, _FW_LINKED) &&
      !pLed->bLedOn)
   SwLedOn(padapter, pLed);
  else if (check_fwstate(pmlmepriv, _FW_LINKED) && pLed->bLedOn)
   SwLedOff(padapter, pLed);
  pLed->BlinkTimes = 0;
  pLed->bLedBlinkInProgress = 0;
 } else {

  if (pLed->BlinkingLedState == LED_STATE_ON)
   pLed->BlinkingLedState = LED_STATE_OFF;
  else
   pLed->BlinkingLedState = LED_STATE_ON;


  switch (pLed->CurrLedState) {
  case 131:
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_NORMAL_INTERVAL));
   break;
  case 130:
  case 129:
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
   break;
  case 128:
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_LONG_INTERVAL));
   break;
  default:
   mod_timer(&pLed->BlinkTimer, jiffies +
      msecs_to_jiffies(LED_BLINK_SLOWLY_INTERVAL));
   break;
  }
 }
}
