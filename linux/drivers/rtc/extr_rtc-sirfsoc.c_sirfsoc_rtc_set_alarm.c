
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_rtc_drv {int lock; } ;
struct rtc_wkalrm {int time; scalar_t__ enabled; } ;
struct device {int dummy; } ;


 int RTC_ALARM0 ;
 unsigned long RTC_SHIFT ;
 int RTC_STATUS ;
 unsigned long SIRFSOC_RTC_AL0 ;
 unsigned long SIRFSOC_RTC_AL0E ;
 struct sirfsoc_rtc_drv* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int rtc_tm_to_time (int *,unsigned long*) ;
 unsigned long sirfsoc_rtc_readl (struct sirfsoc_rtc_drv*,int ) ;
 int sirfsoc_rtc_writel (struct sirfsoc_rtc_drv*,int ,unsigned long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int sirfsoc_rtc_set_alarm(struct device *dev,
  struct rtc_wkalrm *alrm)
{
 unsigned long rtc_status_reg, rtc_alarm;
 struct sirfsoc_rtc_drv *rtcdrv;
 rtcdrv = dev_get_drvdata(dev);

 if (alrm->enabled) {
  rtc_tm_to_time(&(alrm->time), &rtc_alarm);

  spin_lock_irq(&rtcdrv->lock);

  rtc_status_reg = sirfsoc_rtc_readl(rtcdrv, RTC_STATUS);
  if (rtc_status_reg & SIRFSOC_RTC_AL0E) {




   dev_info(dev, "An old alarm was set, will be replaced by a new one\n");
  }

  sirfsoc_rtc_writel(rtcdrv, RTC_ALARM0, rtc_alarm << RTC_SHIFT);
  rtc_status_reg &= ~0x07;




  rtc_status_reg |= SIRFSOC_RTC_AL0;

  rtc_status_reg |= SIRFSOC_RTC_AL0E;
  sirfsoc_rtc_writel(rtcdrv, RTC_STATUS, rtc_status_reg);

  spin_unlock_irq(&rtcdrv->lock);
 } else {





  spin_lock_irq(&rtcdrv->lock);

  rtc_status_reg = sirfsoc_rtc_readl(rtcdrv, RTC_STATUS);
  if (rtc_status_reg & SIRFSOC_RTC_AL0E) {

   rtc_status_reg &= ~0x07;

   rtc_status_reg |= (SIRFSOC_RTC_AL0);

   rtc_status_reg &= ~(SIRFSOC_RTC_AL0E);

   sirfsoc_rtc_writel(rtcdrv, RTC_STATUS,
        rtc_status_reg);
  }

  spin_unlock_irq(&rtcdrv->lock);
 }

 return 0;
}
