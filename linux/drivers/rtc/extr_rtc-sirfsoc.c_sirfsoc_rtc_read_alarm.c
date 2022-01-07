
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_rtc_drv {int overflow_rtc; int lock; } ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;


 int BITS_PER_LONG ;
 int RTC_ALARM0 ;
 int RTC_CN ;
 int RTC_SHIFT ;
 int RTC_STATUS ;
 int SIRFSOC_RTC_AL0E ;
 struct sirfsoc_rtc_drv* dev_get_drvdata (struct device*) ;
 int memset (struct rtc_wkalrm*,int ,int) ;
 int rtc_time_to_tm (int,int *) ;
 int sirfsoc_rtc_readl (struct sirfsoc_rtc_drv*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int sirfsoc_rtc_read_alarm(struct device *dev,
  struct rtc_wkalrm *alrm)
{
 unsigned long rtc_alarm, rtc_count;
 struct sirfsoc_rtc_drv *rtcdrv;

 rtcdrv = dev_get_drvdata(dev);

 spin_lock_irq(&rtcdrv->lock);

 rtc_count = sirfsoc_rtc_readl(rtcdrv, RTC_CN);

 rtc_alarm = sirfsoc_rtc_readl(rtcdrv, RTC_ALARM0);
 memset(alrm, 0, sizeof(struct rtc_wkalrm));






 if (rtc_count > rtc_alarm)
  rtc_time_to_tm((rtcdrv->overflow_rtc + 1)
    << (BITS_PER_LONG - RTC_SHIFT)
    | rtc_alarm >> RTC_SHIFT, &(alrm->time));
 else
  rtc_time_to_tm(rtcdrv->overflow_rtc
    << (BITS_PER_LONG - RTC_SHIFT)
    | rtc_alarm >> RTC_SHIFT, &(alrm->time));
 if (sirfsoc_rtc_readl(rtcdrv, RTC_STATUS) & SIRFSOC_RTC_AL0E)
  alrm->enabled = 1;

 spin_unlock_irq(&rtcdrv->lock);

 return 0;
}
