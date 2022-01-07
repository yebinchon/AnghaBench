
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int vsel_mask; int vsel_reg; } ;


 int MAX_STEPS_ONE_TIME ;
 int ffs (unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static int rk808_buck1_2_i2c_set_voltage_sel(struct regulator_dev *rdev,
          unsigned sel)
{
 int ret, delta_sel;
 unsigned int old_sel, tmp, val, mask = rdev->desc->vsel_mask;

 ret = regmap_read(rdev->regmap, rdev->desc->vsel_reg, &val);
 if (ret != 0)
  return ret;

 tmp = val & ~mask;
 old_sel = val & mask;
 old_sel >>= ffs(mask) - 1;
 delta_sel = sel - old_sel;






 while (delta_sel > MAX_STEPS_ONE_TIME) {
  old_sel += MAX_STEPS_ONE_TIME;
  val = old_sel << (ffs(mask) - 1);
  val |= tmp;







  ret = regmap_write(rdev->regmap, rdev->desc->vsel_reg, val);
  delta_sel = sel - old_sel;
 }

 sel <<= ffs(mask) - 1;
 val = tmp | sel;
 ret = regmap_write(rdev->regmap, rdev->desc->vsel_reg, val);






 udelay(1);

 return ret;
}
