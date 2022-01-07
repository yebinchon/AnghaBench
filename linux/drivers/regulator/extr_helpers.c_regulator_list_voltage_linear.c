
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int n_voltages; unsigned int linear_min_sel; int min_uV; unsigned int uV_step; } ;


 int EINVAL ;

int regulator_list_voltage_linear(struct regulator_dev *rdev,
      unsigned int selector)
{
 if (selector >= rdev->desc->n_voltages)
  return -EINVAL;
 if (selector < rdev->desc->linear_min_sel)
  return 0;

 selector -= rdev->desc->linear_min_sel;

 return rdev->desc->min_uV + (rdev->desc->uV_step * selector);
}
