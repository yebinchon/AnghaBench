
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_ops {int (* set_voltage_time ) (struct regulator_dev*,int,int) ;int (* set_voltage_time_sel ) (struct regulator_dev*,int,int) ;int list_voltage; } ;
struct regulator_dev {TYPE_1__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_2__ {int n_voltages; struct regulator_ops* ops; } ;


 int EINVAL ;
 int _regulator_set_voltage_time (struct regulator_dev*,int,int) ;
 int regulator_list_voltage (struct regulator*,int) ;
 int stub1 (struct regulator_dev*,int,int) ;
 int stub2 (struct regulator_dev*,int,int) ;

int regulator_set_voltage_time(struct regulator *regulator,
          int old_uV, int new_uV)
{
 struct regulator_dev *rdev = regulator->rdev;
 const struct regulator_ops *ops = rdev->desc->ops;
 int old_sel = -1;
 int new_sel = -1;
 int voltage;
 int i;

 if (ops->set_voltage_time)
  return ops->set_voltage_time(rdev, old_uV, new_uV);
 else if (!ops->set_voltage_time_sel)
  return _regulator_set_voltage_time(rdev, old_uV, new_uV);


 if (!ops->list_voltage || !rdev->desc->n_voltages)
  return -EINVAL;

 for (i = 0; i < rdev->desc->n_voltages; i++) {

  voltage = regulator_list_voltage(regulator, i);
  if (voltage < 0)
   return -EINVAL;
  if (voltage == 0)
   continue;
  if (voltage == old_uV)
   old_sel = i;
  if (voltage == new_uV)
   new_sel = i;
 }

 if (old_sel < 0 || new_sel < 0)
  return -EINVAL;

 return ops->set_voltage_time_sel(rdev, old_sel, new_sel);
}
