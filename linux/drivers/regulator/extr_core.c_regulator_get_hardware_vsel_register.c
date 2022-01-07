
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_ops {scalar_t__ set_voltage_sel; } ;
struct regulator_dev {TYPE_1__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_2__ {unsigned int vsel_reg; unsigned int vsel_mask; struct regulator_ops* ops; } ;


 int EOPNOTSUPP ;
 scalar_t__ regulator_set_voltage_sel_regmap ;

int regulator_get_hardware_vsel_register(struct regulator *regulator,
      unsigned *vsel_reg,
      unsigned *vsel_mask)
{
 struct regulator_dev *rdev = regulator->rdev;
 const struct regulator_ops *ops = rdev->desc->ops;

 if (ops->set_voltage_sel != regulator_set_voltage_sel_regmap)
  return -EOPNOTSUPP;

 *vsel_reg = rdev->desc->vsel_reg;
 *vsel_mask = rdev->desc->vsel_mask;

  return 0;
}
