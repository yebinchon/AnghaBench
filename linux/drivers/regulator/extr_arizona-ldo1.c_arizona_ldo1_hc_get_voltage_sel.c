
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int n_voltages; } ;


 int ARIZONA_LDO1_CONTROL_2 ;
 unsigned int ARIZONA_LDO1_HI_PWR ;
 struct regmap* rdev_get_regmap (struct regulator_dev*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regulator_get_voltage_sel_regmap (struct regulator_dev*) ;

__attribute__((used)) static int arizona_ldo1_hc_get_voltage_sel(struct regulator_dev *rdev)
{
 struct regmap *regmap = rdev_get_regmap(rdev);
 unsigned int val;
 int ret;

 ret = regmap_read(regmap, ARIZONA_LDO1_CONTROL_2, &val);
 if (ret != 0)
  return ret;

 if (val & ARIZONA_LDO1_HI_PWR)
  return rdev->desc->n_voltages - 1;

 return regulator_get_voltage_sel_regmap(rdev);
}
