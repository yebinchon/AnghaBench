
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* desc; } ;
struct da9063_regulator_info {int suspend_vsel_reg; } ;
struct da9063_regulator {TYPE_1__* hw; struct da9063_regulator_info* info; } ;
struct TYPE_4__ {int vsel_mask; } ;
struct TYPE_3__ {int regmap; } ;


 int ffs (int ) ;
 struct da9063_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regulator_map_voltage_linear (struct regulator_dev*,int,int) ;

__attribute__((used)) static int da9063_set_suspend_voltage(struct regulator_dev *rdev, int uV)
{
 struct da9063_regulator *regl = rdev_get_drvdata(rdev);
 const struct da9063_regulator_info *rinfo = regl->info;
 int ret, sel;

 sel = regulator_map_voltage_linear(rdev, uV, uV);
 if (sel < 0)
  return sel;

 sel <<= ffs(rdev->desc->vsel_mask) - 1;

 ret = regmap_update_bits(regl->hw->regmap, rinfo->suspend_vsel_reg,
     rdev->desc->vsel_mask, sel);

 return ret;
}
