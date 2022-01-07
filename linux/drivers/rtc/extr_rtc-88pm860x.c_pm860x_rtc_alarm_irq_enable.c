
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_rtc_info {int i2c; } ;
struct device {int dummy; } ;


 int ALARM_EN ;
 int PM8607_RTC1 ;
 struct pm860x_rtc_info* dev_get_drvdata (struct device*) ;
 int pm860x_set_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pm860x_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct pm860x_rtc_info *info = dev_get_drvdata(dev);

 if (enabled)
  pm860x_set_bits(info->i2c, PM8607_RTC1, ALARM_EN, ALARM_EN);
 else
  pm860x_set_bits(info->i2c, PM8607_RTC1, ALARM_EN, 0);
 return 0;
}
