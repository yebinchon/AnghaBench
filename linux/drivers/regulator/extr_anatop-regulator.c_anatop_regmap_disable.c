
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int LDO_POWER_GATE ;
 int regulator_set_voltage_sel_regmap (struct regulator_dev*,int ) ;

__attribute__((used)) static int anatop_regmap_disable(struct regulator_dev *reg)
{
 return regulator_set_voltage_sel_regmap(reg, LDO_POWER_GATE);
}
