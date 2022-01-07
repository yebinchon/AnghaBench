
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct adapter {scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;
struct LED_871x {int BlinkWorkItem; struct adapter* padapter; } ;


 int BlinkTimer ;
 struct LED_871x* from_timer (int ,struct timer_list*,int ) ;
 struct LED_871x* pLed ;
 int schedule_work (int *) ;

__attribute__((used)) static void BlinkTimerCallback(struct timer_list *t)
{
 struct LED_871x *pLed = from_timer(pLed, t, BlinkTimer);
 struct adapter *padapter = pLed->padapter;

 if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
  return;

 schedule_work(&pLed->BlinkWorkItem);
}
