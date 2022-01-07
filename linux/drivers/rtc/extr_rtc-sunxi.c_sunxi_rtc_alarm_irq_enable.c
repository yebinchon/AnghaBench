
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rtc_dev {int dummy; } ;
struct device {int dummy; } ;


 struct sunxi_rtc_dev* dev_get_drvdata (struct device*) ;
 int sunxi_rtc_setaie (unsigned int,struct sunxi_rtc_dev*) ;

__attribute__((used)) static int sunxi_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct sunxi_rtc_dev *chip = dev_get_drvdata(dev);

 if (!enabled)
  sunxi_rtc_setaie(enabled, chip);

 return 0;
}
