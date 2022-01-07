
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {int* volt_table; unsigned int n_voltages; } ;


 int BUG_ON (int) ;
 int EINVAL ;

int regulator_list_voltage_table(struct regulator_dev *rdev,
     unsigned int selector)
{
 if (!rdev->desc->volt_table) {
  BUG_ON(!rdev->desc->volt_table);
  return -EINVAL;
 }

 if (selector >= rdev->desc->n_voltages)
  return -EINVAL;

 return rdev->desc->volt_table[selector];
}
