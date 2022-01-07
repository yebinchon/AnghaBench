
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_rtc_config {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct spear_rtc_config* dev_get_drvdata (struct device*) ;
 int spear_rtc_clear_interrupt (struct spear_rtc_config*) ;
 int spear_rtc_disable_interrupt (struct spear_rtc_config*) ;
 int spear_rtc_enable_interrupt (struct spear_rtc_config*) ;

__attribute__((used)) static int spear_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct spear_rtc_config *config = dev_get_drvdata(dev);
 int ret = 0;

 spear_rtc_clear_interrupt(config);

 switch (enabled) {
 case 0:

  spear_rtc_disable_interrupt(config);
  break;
 case 1:

  spear_rtc_enable_interrupt(config);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
