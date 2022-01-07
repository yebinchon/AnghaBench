
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EBUSY ;
 scalar_t__ regulator_is_enabled_regmap (struct regulator_dev*) ;
 int regulator_set_voltage_sel_regmap (struct regulator_dev*,unsigned int) ;

__attribute__((used)) static int bd718xx_set_voltage_sel_restricted(struct regulator_dev *rdev,
          unsigned int sel)
{
 if (regulator_is_enabled_regmap(rdev))
  return -EBUSY;

 return regulator_set_voltage_sel_regmap(rdev, sel);
}
