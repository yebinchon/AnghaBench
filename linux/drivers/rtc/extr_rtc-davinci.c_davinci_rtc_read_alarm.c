
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {void* tm_hour; void* tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int pending; int enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;


 int EINVAL ;
 int PRTCSS_RTC_ADAY0 ;
 int PRTCSS_RTC_ADAY1 ;
 int PRTCSS_RTC_AHOUR ;
 int PRTCSS_RTC_AMIN ;
 int PRTCSS_RTC_CCTRL ;
 int PRTCSS_RTC_CCTRL_AIEN ;
 void* bcd2bin (int) ;
 scalar_t__ convertfromdays (int,TYPE_1__*) ;
 int davinci_rtc_lock ;
 int davinci_rtcss_calendar_wait (struct davinci_rtc*) ;
 struct davinci_rtc* dev_get_drvdata (struct device*) ;
 scalar_t__ device_may_wakeup (struct device*) ;
 int rtcss_read (struct davinci_rtc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int davinci_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct davinci_rtc *davinci_rtc = dev_get_drvdata(dev);
 u16 days = 0;
 u8 day0, day1;
 unsigned long flags;

 alm->time.tm_sec = 0;

 spin_lock_irqsave(&davinci_rtc_lock, flags);

 davinci_rtcss_calendar_wait(davinci_rtc);
 alm->time.tm_min = bcd2bin(rtcss_read(davinci_rtc, PRTCSS_RTC_AMIN));

 davinci_rtcss_calendar_wait(davinci_rtc);
 alm->time.tm_hour = bcd2bin(rtcss_read(davinci_rtc, PRTCSS_RTC_AHOUR));

 davinci_rtcss_calendar_wait(davinci_rtc);
 day0 = rtcss_read(davinci_rtc, PRTCSS_RTC_ADAY0);

 davinci_rtcss_calendar_wait(davinci_rtc);
 day1 = rtcss_read(davinci_rtc, PRTCSS_RTC_ADAY1);

 spin_unlock_irqrestore(&davinci_rtc_lock, flags);
 days |= day1;
 days <<= 8;
 days |= day0;

 if (convertfromdays(days, &alm->time) < 0)
  return -EINVAL;

 alm->pending = !!(rtcss_read(davinci_rtc,
     PRTCSS_RTC_CCTRL) &
   PRTCSS_RTC_CCTRL_AIEN);
 alm->enabled = alm->pending && device_may_wakeup(dev);

 return 0;
}
