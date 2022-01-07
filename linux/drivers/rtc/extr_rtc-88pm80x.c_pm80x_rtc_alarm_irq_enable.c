
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm80x_rtc_info {int map; } ;
struct device {int dummy; } ;


 int PM800_ALARM1_EN ;
 int PM800_RTC_CONTROL ;
 struct pm80x_rtc_info* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pm80x_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct pm80x_rtc_info *info = dev_get_drvdata(dev);

 if (enabled)
  regmap_update_bits(info->map, PM800_RTC_CONTROL,
       PM800_ALARM1_EN, PM800_ALARM1_EN);
 else
  regmap_update_bits(info->map, PM800_RTC_CONTROL,
       PM800_ALARM1_EN, 0);
 return 0;
}
