
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int disable_val; unsigned int enable_val; unsigned int enable_mask; int enable_reg; scalar_t__ enable_is_inverted; } ;


 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

int regulator_enable_regmap(struct regulator_dev *rdev)
{
 unsigned int val;

 if (rdev->desc->enable_is_inverted) {
  val = rdev->desc->disable_val;
 } else {
  val = rdev->desc->enable_val;
  if (!val)
   val = rdev->desc->enable_mask;
 }

 return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
      rdev->desc->enable_mask, val);
}
