
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct LED_871x {int BlinkWorkItem; TYPE_1__* padapter; } ;
struct TYPE_2__ {scalar_t__ driver_stopped; scalar_t__ surprise_removed; } ;


 int BlinkTimer ;
 struct LED_871x* from_timer (int ,struct timer_list*,int ) ;
 struct LED_871x* pLed ;
 int schedule_work (int *) ;

__attribute__((used)) static void BlinkTimerCallback(struct timer_list *t)
{
 struct LED_871x *pLed = from_timer(pLed, t, BlinkTimer);




 if (pLed->padapter->surprise_removed || pLed->padapter->driver_stopped)
  return;
 schedule_work(&pLed->BlinkWorkItem);
}
