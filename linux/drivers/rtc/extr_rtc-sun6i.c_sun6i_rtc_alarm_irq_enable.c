
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_rtc_dev {int dummy; } ;
struct device {int dummy; } ;


 struct sun6i_rtc_dev* dev_get_drvdata (struct device*) ;
 int sun6i_rtc_setaie (unsigned int,struct sun6i_rtc_dev*) ;

__attribute__((used)) static int sun6i_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct sun6i_rtc_dev *chip = dev_get_drvdata(dev);

 if (!enabled)
  sun6i_rtc_setaie(enabled, chip);

 return 0;
}
