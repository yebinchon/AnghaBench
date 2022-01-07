
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int AB8500_RTC ;
 int AB8500_RTC_STAT_REG ;
 int RTC_ALARM_ENA ;
 int abx500_mask_and_set_register_interruptible (struct device*,int ,int ,int ,int ) ;

__attribute__((used)) static int ab8500_rtc_irq_enable(struct device *dev, unsigned int enabled)
{
 return abx500_mask_and_set_register_interruptible(dev, AB8500_RTC,
  AB8500_RTC_STAT_REG, RTC_ALARM_ENA,
  enabled ? RTC_ALARM_ENA : 0);
}
