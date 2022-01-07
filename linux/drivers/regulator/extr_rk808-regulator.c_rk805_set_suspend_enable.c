
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int enable_reg; int enable_mask; } ;


 unsigned int RK808_SLP_SET_OFF_REG_OFFSET ;
 int regmap_update_bits (int ,unsigned int,int ,int ) ;

__attribute__((used)) static int rk805_set_suspend_enable(struct regulator_dev *rdev)
{
 unsigned int reg;

 reg = rdev->desc->enable_reg + RK808_SLP_SET_OFF_REG_OFFSET;

 return regmap_update_bits(rdev->regmap, reg,
      rdev->desc->enable_mask,
      rdev->desc->enable_mask);
}
