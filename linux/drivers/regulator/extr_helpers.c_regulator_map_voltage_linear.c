
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {int n_voltages; scalar_t__ uV_step; int min_uV; TYPE_1__* ops; scalar_t__ linear_min_sel; } ;
struct TYPE_3__ {int (* list_voltage ) (struct regulator_dev*,int) ;} ;


 int BUG_ON (int) ;
 int DIV_ROUND_UP (int,scalar_t__) ;
 int EINVAL ;
 int stub1 (struct regulator_dev*,int) ;

int regulator_map_voltage_linear(struct regulator_dev *rdev,
     int min_uV, int max_uV)
{
 int ret, voltage;


 if (rdev->desc->n_voltages == 1 && rdev->desc->uV_step == 0) {
  if (min_uV <= rdev->desc->min_uV && rdev->desc->min_uV <= max_uV)
   return 0;
  else
   return -EINVAL;
 }

 if (!rdev->desc->uV_step) {
  BUG_ON(!rdev->desc->uV_step);
  return -EINVAL;
 }

 if (min_uV < rdev->desc->min_uV)
  min_uV = rdev->desc->min_uV;

 ret = DIV_ROUND_UP(min_uV - rdev->desc->min_uV, rdev->desc->uV_step);
 if (ret < 0)
  return ret;

 ret += rdev->desc->linear_min_sel;


 voltage = rdev->desc->ops->list_voltage(rdev, ret);
 if (voltage < min_uV || voltage > max_uV)
  return -EINVAL;

 return ret;
}
