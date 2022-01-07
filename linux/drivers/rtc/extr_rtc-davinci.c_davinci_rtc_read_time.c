
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtc_time {void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;


 int EINVAL ;
 int PRTCSS_RTC_DAY0 ;
 int PRTCSS_RTC_DAY1 ;
 int PRTCSS_RTC_HOUR ;
 int PRTCSS_RTC_MIN ;
 int PRTCSS_RTC_SEC ;
 void* bcd2bin (int) ;
 scalar_t__ convertfromdays (int,struct rtc_time*) ;
 int davinci_rtc_lock ;
 int davinci_rtcss_calendar_wait (struct davinci_rtc*) ;
 struct davinci_rtc* dev_get_drvdata (struct device*) ;
 int rtcss_read (struct davinci_rtc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int davinci_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct davinci_rtc *davinci_rtc = dev_get_drvdata(dev);
 u16 days = 0;
 u8 day0, day1;
 unsigned long flags;

 spin_lock_irqsave(&davinci_rtc_lock, flags);

 davinci_rtcss_calendar_wait(davinci_rtc);
 tm->tm_sec = bcd2bin(rtcss_read(davinci_rtc, PRTCSS_RTC_SEC));

 davinci_rtcss_calendar_wait(davinci_rtc);
 tm->tm_min = bcd2bin(rtcss_read(davinci_rtc, PRTCSS_RTC_MIN));

 davinci_rtcss_calendar_wait(davinci_rtc);
 tm->tm_hour = bcd2bin(rtcss_read(davinci_rtc, PRTCSS_RTC_HOUR));

 davinci_rtcss_calendar_wait(davinci_rtc);
 day0 = rtcss_read(davinci_rtc, PRTCSS_RTC_DAY0);

 davinci_rtcss_calendar_wait(davinci_rtc);
 day1 = rtcss_read(davinci_rtc, PRTCSS_RTC_DAY1);

 spin_unlock_irqrestore(&davinci_rtc_lock, flags);

 days |= day1;
 days <<= 8;
 days |= day0;

 if (convertfromdays(days, tm) < 0)
  return -EINVAL;

 return 0;
}
