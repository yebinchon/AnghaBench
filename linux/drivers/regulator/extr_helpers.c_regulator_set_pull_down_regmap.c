
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int pull_down_val_on; unsigned int pull_down_mask; int pull_down_reg; } ;


 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

int regulator_set_pull_down_regmap(struct regulator_dev *rdev)
{
 unsigned int val;

 val = rdev->desc->pull_down_val_on;
 if (!val)
  val = rdev->desc->pull_down_mask;

 return regmap_update_bits(rdev->regmap, rdev->desc->pull_down_reg,
      rdev->desc->pull_down_mask, val);
}
