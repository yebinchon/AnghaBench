
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds3232 {int regmap; } ;
struct device {int dummy; } ;


 int DS3232_REG_CR ;
 int DS3232_REG_CR_A1IE ;
 struct ds3232* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ds3232_update_alarm(struct device *dev, unsigned int enabled)
{
 struct ds3232 *ds3232 = dev_get_drvdata(dev);
 int control;
 int ret;

 ret = regmap_read(ds3232->regmap, DS3232_REG_CR, &control);
 if (ret)
  return ret;

 if (enabled)

  control |= DS3232_REG_CR_A1IE;
 else

  control &= ~(DS3232_REG_CR_A1IE);
 ret = regmap_write(ds3232->regmap, DS3232_REG_CR, control);

 return ret;
}
