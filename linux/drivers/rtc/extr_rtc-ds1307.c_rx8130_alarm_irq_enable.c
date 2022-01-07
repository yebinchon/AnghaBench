
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1307 {int regmap; int flags; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int HAS_ALARM ;
 int RX8130_REG_CONTROL0 ;
 int RX8130_REG_CONTROL0_AIE ;
 struct ds1307* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int rx8130_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct ds1307 *ds1307 = dev_get_drvdata(dev);
 int ret, reg;

 if (!test_bit(HAS_ALARM, &ds1307->flags))
  return -EINVAL;

 ret = regmap_read(ds1307->regmap, RX8130_REG_CONTROL0, &reg);
 if (ret < 0)
  return ret;

 if (enabled)
  reg |= RX8130_REG_CONTROL0_AIE;
 else
  reg &= ~RX8130_REG_CONTROL0_AIE;

 return regmap_write(ds1307->regmap, RX8130_REG_CONTROL0, reg);
}
