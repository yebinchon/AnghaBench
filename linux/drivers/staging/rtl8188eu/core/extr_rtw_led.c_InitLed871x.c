
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
struct LED_871x {int BlinkWorkItem; int BlinkTimer; struct adapter* padapter; } ;


 int BlinkTimerCallback ;
 int BlinkWorkItemCallback ;
 int INIT_WORK (int *,int ) ;
 int ResetLedStatus (struct LED_871x*) ;
 int timer_setup (int *,int ,int ) ;

void InitLed871x(struct adapter *padapter, struct LED_871x *pLed)
{
 pLed->padapter = padapter;

 ResetLedStatus(pLed);

 timer_setup(&pLed->BlinkTimer, BlinkTimerCallback, 0);

 INIT_WORK(&pLed->BlinkWorkItem, BlinkWorkItemCallback);
}
