
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int bypass_val_on; unsigned int bypass_mask; unsigned int bypass_val_off; int bypass_reg; } ;


 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

int regulator_set_bypass_regmap(struct regulator_dev *rdev, bool enable)
{
 unsigned int val;

 if (enable) {
  val = rdev->desc->bypass_val_on;
  if (!val)
   val = rdev->desc->bypass_mask;
 } else {
  val = rdev->desc->bypass_val_off;
 }

 return regmap_update_bits(rdev->regmap, rdev->desc->bypass_reg,
      rdev->desc->bypass_mask, val);
}
