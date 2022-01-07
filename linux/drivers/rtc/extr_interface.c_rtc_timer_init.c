
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_timer {void (* func ) (struct rtc_device*) ;struct rtc_device* rtc; scalar_t__ enabled; int node; } ;
struct rtc_device {int dummy; } ;


 int timerqueue_init (int *) ;

void rtc_timer_init(struct rtc_timer *timer, void (*f)(struct rtc_device *r),
      struct rtc_device *rtc)
{
 timerqueue_init(&timer->node);
 timer->enabled = 0;
 timer->func = f;
 timer->rtc = rtc;
}
