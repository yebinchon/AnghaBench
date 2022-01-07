
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int da9063_rtc_start_alarm (struct device*) ;
 int da9063_rtc_stop_alarm (struct device*) ;

__attribute__((used)) static int da9063_rtc_alarm_irq_enable(struct device *dev,
           unsigned int enabled)
{
 if (enabled)
  return da9063_rtc_start_alarm(dev);
 else
  return da9063_rtc_stop_alarm(dev);
}
