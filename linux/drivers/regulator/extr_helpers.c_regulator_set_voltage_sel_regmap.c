
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {int vsel_mask; int apply_bit; int apply_reg; int vsel_reg; } ;


 int ffs (int) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;

int regulator_set_voltage_sel_regmap(struct regulator_dev *rdev, unsigned sel)
{
 int ret;

 sel <<= ffs(rdev->desc->vsel_mask) - 1;

 ret = regmap_update_bits(rdev->regmap, rdev->desc->vsel_reg,
      rdev->desc->vsel_mask, sel);
 if (ret)
  return ret;

 if (rdev->desc->apply_bit)
  ret = regmap_update_bits(rdev->regmap, rdev->desc->apply_reg,
      rdev->desc->apply_bit,
      rdev->desc->apply_bit);
 return ret;
}
