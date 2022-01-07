
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _adapter {int dummy; } ;
struct LED_871x {int LedPin; int bLedOn; int bLedBlinkInProgress; int BlinkWorkItem; int BlinkTimer; int BlinkingLedState; scalar_t__ BlinkTimes; int CurrLedState; struct _adapter* padapter; } ;
typedef enum LED_PIN_871x { ____Placeholder_LED_PIN_871x } LED_PIN_871x ;


 int BlinkTimerCallback ;
 int BlinkWorkItemCallback ;
 int INIT_WORK (int *,int ) ;
 int LED_STATE_OFF ;
 int LED_UNKNOWN ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void InitLed871x(struct _adapter *padapter, struct LED_871x *pLed,
   enum LED_PIN_871x LedPin)
{
 pLed->padapter = padapter;
 pLed->LedPin = LedPin;
 pLed->CurrLedState = LED_STATE_OFF;
 pLed->bLedOn = 0;
 pLed->bLedBlinkInProgress = 0;
 pLed->BlinkTimes = 0;
 pLed->BlinkingLedState = LED_UNKNOWN;
 timer_setup(&pLed->BlinkTimer, BlinkTimerCallback, 0);
 INIT_WORK(&pLed->BlinkWorkItem, BlinkWorkItemCallback);
}
