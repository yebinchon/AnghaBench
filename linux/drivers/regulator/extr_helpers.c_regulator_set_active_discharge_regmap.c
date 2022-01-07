
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int active_discharge_on; unsigned int active_discharge_off; int active_discharge_mask; int active_discharge_reg; } ;


 int regmap_update_bits (int ,int ,int ,unsigned int) ;

int regulator_set_active_discharge_regmap(struct regulator_dev *rdev,
       bool enable)
{
 unsigned int val;

 if (enable)
  val = rdev->desc->active_discharge_on;
 else
  val = rdev->desc->active_discharge_off;

 return regmap_update_bits(rdev->regmap,
      rdev->desc->active_discharge_reg,
      rdev->desc->active_discharge_mask, val);
}
