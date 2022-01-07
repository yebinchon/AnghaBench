
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tps65910 {int regmap; } ;
struct device {int parent; } ;


 int TPS65910_RTC_INTERRUPTS ;
 int TPS65910_RTC_INTERRUPTS_IT_ALARM ;
 struct tps65910* dev_get_drvdata (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int tps65910_rtc_alarm_irq_enable(struct device *dev,
      unsigned int enabled)
{
 struct tps65910 *tps = dev_get_drvdata(dev->parent);
 u8 val = 0;

 if (enabled)
  val = TPS65910_RTC_INTERRUPTS_IT_ALARM;

 return regmap_write(tps->regmap, TPS65910_RTC_INTERRUPTS, val);
}
