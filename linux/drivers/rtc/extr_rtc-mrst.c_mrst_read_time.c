
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;


 int RTC_DAY_OF_MONTH ;
 int RTC_HOURS ;
 int RTC_MINUTES ;
 int RTC_MONTH ;
 int RTC_SECONDS ;
 int RTC_YEAR ;
 int msleep (int) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void* vrtc_cmos_read (int ) ;
 scalar_t__ vrtc_is_updating () ;

__attribute__((used)) static int mrst_read_time(struct device *dev, struct rtc_time *time)
{
 unsigned long flags;

 if (vrtc_is_updating())
  msleep(20);

 spin_lock_irqsave(&rtc_lock, flags);
 time->tm_sec = vrtc_cmos_read(RTC_SECONDS);
 time->tm_min = vrtc_cmos_read(RTC_MINUTES);
 time->tm_hour = vrtc_cmos_read(RTC_HOURS);
 time->tm_mday = vrtc_cmos_read(RTC_DAY_OF_MONTH);
 time->tm_mon = vrtc_cmos_read(RTC_MONTH);
 time->tm_year = vrtc_cmos_read(RTC_YEAR);
 spin_unlock_irqrestore(&rtc_lock, flags);


 time->tm_year += 72;
 time->tm_mon--;
 return 0;
}
