
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_device {int ops_lock; } ;


 int __rtc_read_time (struct rtc_device*,struct rtc_time*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 int trace_rtc_read_time (int ,int) ;

int rtc_read_time(struct rtc_device *rtc, struct rtc_time *tm)
{
 int err;

 err = mutex_lock_interruptible(&rtc->ops_lock);
 if (err)
  return err;

 err = __rtc_read_time(rtc, tm);
 mutex_unlock(&rtc->ops_lock);

 trace_rtc_read_time(rtc_tm_to_time64(tm), err);
 return err;
}
