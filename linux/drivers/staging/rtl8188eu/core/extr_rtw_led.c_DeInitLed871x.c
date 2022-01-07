
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LED_871x {int BlinkTimer; int BlinkWorkItem; } ;


 int ResetLedStatus (struct LED_871x*) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;

void DeInitLed871x(struct LED_871x *pLed)
{
 cancel_work_sync(&pLed->BlinkWorkItem);
 del_timer_sync(&pLed->BlinkTimer);
 ResetLedStatus(pLed);
}
