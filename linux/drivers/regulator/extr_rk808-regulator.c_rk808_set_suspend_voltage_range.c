
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int vsel_reg; int vsel_mask; } ;


 int EINVAL ;
 unsigned int RK808_SLP_REG_OFFSET ;
 int regmap_update_bits (int ,unsigned int,int ,int) ;
 int regulator_map_voltage_linear_range (struct regulator_dev*,int,int) ;

__attribute__((used)) static int rk808_set_suspend_voltage_range(struct regulator_dev *rdev, int uv)
{
 unsigned int reg;
 int sel = regulator_map_voltage_linear_range(rdev, uv, uv);

 if (sel < 0)
  return -EINVAL;

 reg = rdev->desc->vsel_reg + RK808_SLP_REG_OFFSET;

 return regmap_update_bits(rdev->regmap, reg,
      rdev->desc->vsel_mask,
      sel);
}
