
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_timer {scalar_t__ enabled; } ;
struct rtc_device {int ops_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtc_timer_remove (struct rtc_device*,struct rtc_timer*) ;

void rtc_timer_cancel(struct rtc_device *rtc, struct rtc_timer *timer)
{
 mutex_lock(&rtc->ops_lock);
 if (timer->enabled)
  rtc_timer_remove(rtc, timer);
 mutex_unlock(&rtc->ops_lock);
}
