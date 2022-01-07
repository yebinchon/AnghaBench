
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct anatop_regulator {int bypass; } ;


 int LDO_FET_FULL_ON ;
 int LDO_POWER_GATE ;
 int WARN_ON (int) ;
 struct anatop_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_get_voltage_sel_regmap (struct regulator_dev*) ;

__attribute__((used)) static int anatop_regmap_get_bypass(struct regulator_dev *reg, bool *enable)
{
 struct anatop_regulator *anatop_reg = rdev_get_drvdata(reg);
 int sel;

 sel = regulator_get_voltage_sel_regmap(reg);
 if (sel == LDO_FET_FULL_ON)
  WARN_ON(!anatop_reg->bypass);
 else if (sel != LDO_POWER_GATE)
  WARN_ON(anatop_reg->bypass);

 *enable = anatop_reg->bypass;
 return 0;
}
