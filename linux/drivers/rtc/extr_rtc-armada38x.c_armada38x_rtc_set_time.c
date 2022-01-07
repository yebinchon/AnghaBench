
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct armada38x_rtc {int lock; int initialized; } ;


 int RTC_TIME ;
 int armada38x_rtc_reset (struct armada38x_rtc*) ;
 struct armada38x_rtc* dev_get_drvdata (struct device*) ;
 int rtc_delayed_write (unsigned long,struct armada38x_rtc*,int ) ;
 unsigned long rtc_tm_to_time64 (struct rtc_time*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int armada38x_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct armada38x_rtc *rtc = dev_get_drvdata(dev);
 unsigned long time, flags;

 time = rtc_tm_to_time64(tm);

 if (!rtc->initialized)
  armada38x_rtc_reset(rtc);

 spin_lock_irqsave(&rtc->lock, flags);
 rtc_delayed_write(time, rtc, RTC_TIME);
 spin_unlock_irqrestore(&rtc->lock, flags);

 return 0;
}
