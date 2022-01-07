
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf85063 {int regmap; } ;
struct device {int dummy; } ;


 int PCF85063_CTRL2_AIE ;
 int PCF85063_REG_CTRL2 ;
 struct pcf85063* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pcf85063_rtc_alarm_irq_enable(struct device *dev,
      unsigned int enabled)
{
 struct pcf85063 *pcf85063 = dev_get_drvdata(dev);

 return regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL2,
      PCF85063_CTRL2_AIE,
      enabled ? PCF85063_CTRL2_AIE : 0);
}
