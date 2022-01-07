
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {int n_voltages; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* list_voltage ) (struct regulator_dev*,int) ;} ;


 int EINVAL ;
 int INT_MAX ;
 int stub1 (struct regulator_dev*,int) ;

int regulator_map_voltage_iterate(struct regulator_dev *rdev,
      int min_uV, int max_uV)
{
 int best_val = INT_MAX;
 int selector = 0;
 int i, ret;




 for (i = 0; i < rdev->desc->n_voltages; i++) {
  ret = rdev->desc->ops->list_voltage(rdev, i);
  if (ret < 0)
   continue;

  if (ret < best_val && ret >= min_uV && ret <= max_uV) {
   best_val = ret;
   selector = i;
  }
 }

 if (best_val != INT_MAX)
  return selector;
 else
  return -EINVAL;
}
