
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_plat_data {scalar_t__ irq; int irqen; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int RTC_AF ;
 struct rtc_plat_data* dev_get_drvdata (struct device*) ;
 int ds1553_rtc_update_alarm (struct rtc_plat_data*) ;

__attribute__((used)) static int ds1553_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct rtc_plat_data *pdata = dev_get_drvdata(dev);

 if (pdata->irq <= 0)
  return -EINVAL;
 if (enabled)
  pdata->irqen |= RTC_AF;
 else
  pdata->irqen &= ~RTC_AF;
 ds1553_rtc_update_alarm(pdata);
 return 0;
}
