
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_rtc_drv {int lock; } ;
struct device {int dummy; } ;


 int RTC_STATUS ;
 unsigned long SIRFSOC_RTC_AL0E ;
 struct sirfsoc_rtc_drv* dev_get_drvdata (struct device*) ;
 unsigned long sirfsoc_rtc_readl (struct sirfsoc_rtc_drv*,int ) ;
 int sirfsoc_rtc_writel (struct sirfsoc_rtc_drv*,int ,unsigned long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int sirfsoc_rtc_alarm_irq_enable(struct device *dev,
  unsigned int enabled)
{
 unsigned long rtc_status_reg = 0x0;
 struct sirfsoc_rtc_drv *rtcdrv;

 rtcdrv = dev_get_drvdata(dev);

 spin_lock_irq(&rtcdrv->lock);

 rtc_status_reg = sirfsoc_rtc_readl(rtcdrv, RTC_STATUS);
 if (enabled)
  rtc_status_reg |= SIRFSOC_RTC_AL0E;
 else
  rtc_status_reg &= ~SIRFSOC_RTC_AL0E;

 sirfsoc_rtc_writel(rtcdrv, RTC_STATUS, rtc_status_reg);

 spin_unlock_irq(&rtcdrv->lock);

 return 0;

}
