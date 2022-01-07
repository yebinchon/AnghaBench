
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; scalar_t__ pending; TYPE_1__ time; } ;
struct mrst_rtc {scalar_t__ irq; } ;
struct device {int dummy; } ;


 int EIO ;
 unsigned char RTC_AIE ;
 int RTC_CONTROL ;
 int RTC_HOURS_ALARM ;
 int RTC_MINUTES_ALARM ;
 int RTC_SECONDS_ALARM ;
 struct mrst_rtc* dev_get_drvdata (struct device*) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 void* vrtc_cmos_read (int ) ;

__attribute__((used)) static int mrst_read_alarm(struct device *dev, struct rtc_wkalrm *t)
{
 struct mrst_rtc *mrst = dev_get_drvdata(dev);
 unsigned char rtc_control;

 if (mrst->irq <= 0)
  return -EIO;


 spin_lock_irq(&rtc_lock);
 t->time.tm_sec = vrtc_cmos_read(RTC_SECONDS_ALARM);
 t->time.tm_min = vrtc_cmos_read(RTC_MINUTES_ALARM);
 t->time.tm_hour = vrtc_cmos_read(RTC_HOURS_ALARM);

 rtc_control = vrtc_cmos_read(RTC_CONTROL);
 spin_unlock_irq(&rtc_lock);

 t->enabled = !!(rtc_control & RTC_AIE);
 t->pending = 0;

 return 0;
}
