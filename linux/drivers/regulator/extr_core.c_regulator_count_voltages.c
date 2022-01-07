
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {struct regulator* supply; int is_switch; TYPE_1__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_2__ {int n_voltages; } ;


 int EINVAL ;

int regulator_count_voltages(struct regulator *regulator)
{
 struct regulator_dev *rdev = regulator->rdev;

 if (rdev->desc->n_voltages)
  return rdev->desc->n_voltages;

 if (!rdev->is_switch || !rdev->supply)
  return -EINVAL;

 return regulator_count_voltages(rdev->supply);
}
