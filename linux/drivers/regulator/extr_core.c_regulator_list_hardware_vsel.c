
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_ops {scalar_t__ set_voltage_sel; } ;
struct regulator_dev {TYPE_1__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_2__ {unsigned int n_voltages; struct regulator_ops* ops; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ regulator_set_voltage_sel_regmap ;

int regulator_list_hardware_vsel(struct regulator *regulator,
     unsigned selector)
{
 struct regulator_dev *rdev = regulator->rdev;
 const struct regulator_ops *ops = rdev->desc->ops;

 if (selector >= rdev->desc->n_voltages)
  return -EINVAL;
 if (ops->set_voltage_sel != regulator_set_voltage_sel_regmap)
  return -EOPNOTSUPP;

 return selector;
}
