
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 scalar_t__ LDO_POWER_GATE ;
 scalar_t__ regulator_get_voltage_sel_regmap (struct regulator_dev*) ;

__attribute__((used)) static int anatop_regmap_is_enabled(struct regulator_dev *reg)
{
 return regulator_get_voltage_sel_regmap(reg) != LDO_POWER_GATE;
}
