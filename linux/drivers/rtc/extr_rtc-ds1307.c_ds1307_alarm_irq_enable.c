
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1307 {int regmap; int flags; } ;
struct device {int dummy; } ;


 int DS1337_BIT_A1IE ;
 int DS1337_REG_CONTROL ;
 int ENOTTY ;
 int HAS_ALARM ;
 struct ds1307* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ds1307_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct ds1307 *ds1307 = dev_get_drvdata(dev);

 if (!test_bit(HAS_ALARM, &ds1307->flags))
  return -ENOTTY;

 return regmap_update_bits(ds1307->regmap, DS1337_REG_CONTROL,
      DS1337_BIT_A1IE,
      enabled ? DS1337_BIT_A1IE : 0);
}
