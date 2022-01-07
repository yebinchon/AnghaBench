
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int soft_start_val_on; unsigned int soft_start_mask; int soft_start_reg; } ;


 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

int regulator_set_soft_start_regmap(struct regulator_dev *rdev)
{
 unsigned int val;

 val = rdev->desc->soft_start_val_on;
 if (!val)
  val = rdev->desc->soft_start_mask;

 return regmap_update_bits(rdev->regmap, rdev->desc->soft_start_reg,
      rdev->desc->soft_start_mask, val);
}
