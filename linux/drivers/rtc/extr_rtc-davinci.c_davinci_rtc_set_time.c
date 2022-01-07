
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtc_time {int tm_hour; int tm_min; int tm_sec; } ;
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;


 int EINVAL ;
 int PRTCSS_RTC_CCTRL ;
 int PRTCSS_RTC_CCTRL_CAEN ;
 int PRTCSS_RTC_DAY0 ;
 int PRTCSS_RTC_DAY1 ;
 int PRTCSS_RTC_HOUR ;
 int PRTCSS_RTC_MIN ;
 int PRTCSS_RTC_SEC ;
 int bin2bcd (int ) ;
 scalar_t__ convert2days (int*,struct rtc_time*) ;
 int davinci_rtc_lock ;
 int davinci_rtcss_calendar_wait (struct davinci_rtc*) ;
 struct davinci_rtc* dev_get_drvdata (struct device*) ;
 int rtcss_read (struct davinci_rtc*,int ) ;
 int rtcss_write (struct davinci_rtc*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int davinci_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct davinci_rtc *davinci_rtc = dev_get_drvdata(dev);
 u16 days;
 u8 rtc_cctrl;
 unsigned long flags;

 if (convert2days(&days, tm) < 0)
  return -EINVAL;

 spin_lock_irqsave(&davinci_rtc_lock, flags);

 davinci_rtcss_calendar_wait(davinci_rtc);
 rtcss_write(davinci_rtc, bin2bcd(tm->tm_sec), PRTCSS_RTC_SEC);

 davinci_rtcss_calendar_wait(davinci_rtc);
 rtcss_write(davinci_rtc, bin2bcd(tm->tm_min), PRTCSS_RTC_MIN);

 davinci_rtcss_calendar_wait(davinci_rtc);
 rtcss_write(davinci_rtc, bin2bcd(tm->tm_hour), PRTCSS_RTC_HOUR);

 davinci_rtcss_calendar_wait(davinci_rtc);
 rtcss_write(davinci_rtc, days & 0xFF, PRTCSS_RTC_DAY0);

 davinci_rtcss_calendar_wait(davinci_rtc);
 rtcss_write(davinci_rtc, (days & 0xFF00) >> 8, PRTCSS_RTC_DAY1);

 rtc_cctrl = rtcss_read(davinci_rtc, PRTCSS_RTC_CCTRL);
 rtc_cctrl |= PRTCSS_RTC_CCTRL_CAEN;
 rtcss_write(davinci_rtc, rtc_cctrl, PRTCSS_RTC_CCTRL);

 spin_unlock_irqrestore(&davinci_rtc_lock, flags);

 return 0;
}
