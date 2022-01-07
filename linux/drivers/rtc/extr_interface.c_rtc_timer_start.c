
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* expires; } ;
struct rtc_timer {void* period; TYPE_1__ node; scalar_t__ enabled; } ;
struct rtc_device {int ops_lock; } ;
typedef void* ktime_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtc_timer_enqueue (struct rtc_device*,struct rtc_timer*) ;
 int rtc_timer_remove (struct rtc_device*,struct rtc_timer*) ;

int rtc_timer_start(struct rtc_device *rtc, struct rtc_timer *timer,
      ktime_t expires, ktime_t period)
{
 int ret = 0;

 mutex_lock(&rtc->ops_lock);
 if (timer->enabled)
  rtc_timer_remove(rtc, timer);

 timer->node.expires = expires;
 timer->period = period;

 ret = rtc_timer_enqueue(rtc, timer);

 mutex_unlock(&rtc->ops_lock);
 return ret;
}
