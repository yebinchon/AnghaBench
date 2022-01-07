
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct ac100_rtc_dev {struct regmap* regmap; } ;


 int AC100_ALM_INT_ENA ;
 unsigned int AC100_ALM_INT_ENABLE ;
 struct ac100_rtc_dev* dev_get_drvdata (struct device*) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;

__attribute__((used)) static int ac100_rtc_alarm_irq_enable(struct device *dev, unsigned int en)
{
 struct ac100_rtc_dev *chip = dev_get_drvdata(dev);
 struct regmap *regmap = chip->regmap;
 unsigned int val;

 val = en ? AC100_ALM_INT_ENABLE : 0;

 return regmap_write(regmap, AC100_ALM_INT_ENA, val);
}
