
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
 int stub1 (struct regulator_dev*,int) ;

int regulator_map_voltage_ascend(struct regulator_dev *rdev,
     int min_uV, int max_uV)
{
 int i, ret;

 for (i = 0; i < rdev->desc->n_voltages; i++) {
  ret = rdev->desc->ops->list_voltage(rdev, i);
  if (ret < 0)
   continue;

  if (ret > max_uV)
   break;

  if (ret >= min_uV && ret <= max_uV)
   return i;
 }

 return -EINVAL;
}
