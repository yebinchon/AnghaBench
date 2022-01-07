
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dev; int regmap; } ;
struct TYPE_2__ {int name; } ;
struct mt6358_regulator_info {int da_vsel_shift; int da_vsel_mask; TYPE_1__ desc; int da_vsel_reg; } ;


 int dev_err (int *,char*,int ,int) ;
 struct mt6358_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int mt6358_get_buck_voltage_sel(struct regulator_dev *rdev)
{
 int ret, regval;
 struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);

 ret = regmap_read(rdev->regmap, info->da_vsel_reg, &regval);
 if (ret != 0) {
  dev_err(&rdev->dev,
   "Failed to get mt6358 Buck %s vsel reg: %d\n",
   info->desc.name, ret);
  return ret;
 }

 ret = (regval >> info->da_vsel_shift) & info->da_vsel_mask;

 return ret;
}
