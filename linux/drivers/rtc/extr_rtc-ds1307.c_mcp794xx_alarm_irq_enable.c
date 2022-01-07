
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1307 {int regmap; int flags; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int HAS_ALARM ;
 int MCP794XX_BIT_ALM0_EN ;
 int MCP794XX_REG_CONTROL ;
 struct ds1307* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int mcp794xx_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct ds1307 *ds1307 = dev_get_drvdata(dev);

 if (!test_bit(HAS_ALARM, &ds1307->flags))
  return -EINVAL;

 return regmap_update_bits(ds1307->regmap, MCP794XX_REG_CONTROL,
      MCP794XX_BIT_ALM0_EN,
      enabled ? MCP794XX_BIT_ALM0_EN : 0);
}
