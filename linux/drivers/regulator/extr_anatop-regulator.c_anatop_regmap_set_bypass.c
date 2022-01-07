
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct anatop_regulator {int bypass; int sel; } ;


 int LDO_FET_FULL_ON ;
 struct anatop_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_set_voltage_sel_regmap (struct regulator_dev*,int) ;

__attribute__((used)) static int anatop_regmap_set_bypass(struct regulator_dev *reg, bool enable)
{
 struct anatop_regulator *anatop_reg = rdev_get_drvdata(reg);
 int sel;

 if (enable == anatop_reg->bypass)
  return 0;

 sel = enable ? LDO_FET_FULL_ON : anatop_reg->sel;
 anatop_reg->bypass = enable;

 return regulator_set_voltage_sel_regmap(reg, sel);
}
