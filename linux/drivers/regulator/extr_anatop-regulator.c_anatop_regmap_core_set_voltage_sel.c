
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct anatop_regulator {unsigned int sel; scalar_t__ bypass; } ;


 int anatop_regmap_is_enabled (struct regulator_dev*) ;
 struct anatop_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_set_voltage_sel_regmap (struct regulator_dev*,unsigned int) ;

__attribute__((used)) static int anatop_regmap_core_set_voltage_sel(struct regulator_dev *reg,
           unsigned selector)
{
 struct anatop_regulator *anatop_reg = rdev_get_drvdata(reg);
 int ret;

 if (anatop_reg->bypass || !anatop_regmap_is_enabled(reg)) {
  anatop_reg->sel = selector;
  return 0;
 }

 ret = regulator_set_voltage_sel_regmap(reg, selector);
 if (!ret)
  anatop_reg->sel = selector;
 return ret;
}
