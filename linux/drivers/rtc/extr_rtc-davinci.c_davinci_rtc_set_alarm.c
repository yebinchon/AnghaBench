
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtc_time {scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; int tm_hour; int tm_min; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;


 int EINVAL ;
 int PRTCSS_RTC_ADAY0 ;
 int PRTCSS_RTC_ADAY1 ;
 int PRTCSS_RTC_AHOUR ;
 int PRTCSS_RTC_AMIN ;
 int bin2bcd (int ) ;
 scalar_t__ convert2days (int*,struct rtc_time*) ;
 int davinci_rtc_lock ;
 int davinci_rtc_read_time (struct device*,struct rtc_time*) ;
 int davinci_rtcss_calendar_wait (struct davinci_rtc*) ;
 struct davinci_rtc* dev_get_drvdata (struct device*) ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int rtcss_write (struct davinci_rtc*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int davinci_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct davinci_rtc *davinci_rtc = dev_get_drvdata(dev);
 unsigned long flags;
 u16 days;

 if (alm->time.tm_mday <= 0 && alm->time.tm_mon < 0
     && alm->time.tm_year < 0) {
  struct rtc_time tm;
  unsigned long now, then;

  davinci_rtc_read_time(dev, &tm);
  rtc_tm_to_time(&tm, &now);

  alm->time.tm_mday = tm.tm_mday;
  alm->time.tm_mon = tm.tm_mon;
  alm->time.tm_year = tm.tm_year;
  rtc_tm_to_time(&alm->time, &then);

  if (then < now) {
   rtc_time_to_tm(now + 24 * 60 * 60, &tm);
   alm->time.tm_mday = tm.tm_mday;
   alm->time.tm_mon = tm.tm_mon;
   alm->time.tm_year = tm.tm_year;
  }
 }

 if (convert2days(&days, &alm->time) < 0)
  return -EINVAL;

 spin_lock_irqsave(&davinci_rtc_lock, flags);

 davinci_rtcss_calendar_wait(davinci_rtc);
 rtcss_write(davinci_rtc, bin2bcd(alm->time.tm_min), PRTCSS_RTC_AMIN);

 davinci_rtcss_calendar_wait(davinci_rtc);
 rtcss_write(davinci_rtc, bin2bcd(alm->time.tm_hour), PRTCSS_RTC_AHOUR);

 davinci_rtcss_calendar_wait(davinci_rtc);
 rtcss_write(davinci_rtc, days & 0xFF, PRTCSS_RTC_ADAY0);

 davinci_rtcss_calendar_wait(davinci_rtc);
 rtcss_write(davinci_rtc, (days & 0xFF00) >> 8, PRTCSS_RTC_ADAY1);

 spin_unlock_irqrestore(&davinci_rtc_lock, flags);

 return 0;
}
