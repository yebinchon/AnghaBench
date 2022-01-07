
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8998_rtc_info {int dummy; } ;
struct device {int dummy; } ;


 struct max8998_rtc_info* dev_get_drvdata (struct device*) ;
 int max8998_rtc_start_alarm (struct max8998_rtc_info*) ;
 int max8998_rtc_stop_alarm (struct max8998_rtc_info*) ;

__attribute__((used)) static int max8998_rtc_alarm_irq_enable(struct device *dev,
     unsigned int enabled)
{
 struct max8998_rtc_info *info = dev_get_drvdata(dev);

 if (enabled)
  return max8998_rtc_start_alarm(info);
 else
  return max8998_rtc_stop_alarm(info);
}
