
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int enable_mask; int enable_val; scalar_t__ enable_is_inverted; int enable_reg; } ;


 int regmap_read (int ,int ,unsigned int*) ;

int regulator_is_enabled_regmap(struct regulator_dev *rdev)
{
 unsigned int val;
 int ret;

 ret = regmap_read(rdev->regmap, rdev->desc->enable_reg, &val);
 if (ret != 0)
  return ret;

 val &= rdev->desc->enable_mask;

 if (rdev->desc->enable_is_inverted) {
  if (rdev->desc->enable_val)
   return val != rdev->desc->enable_val;
  return val == 0;
 } else {
  if (rdev->desc->enable_val)
   return val == rdev->desc->enable_val;
  return val != 0;
 }
}
