
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regulator_dev {int regmap; } ;
struct TYPE_2__ {int vsel_mask; int vsel_reg; } ;
struct mt6358_regulator_info {int* index_table; int vsel_shift; TYPE_1__ desc; } ;


 struct mt6358_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mt6358_set_voltage_sel(struct regulator_dev *rdev,
      unsigned int selector)
{
 int idx, ret;
 const u32 *pvol;
 struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);

 pvol = info->index_table;

 idx = pvol[selector];
 ret = regmap_update_bits(rdev->regmap, info->desc.vsel_reg,
     info->desc.vsel_mask,
     idx << info->vsel_shift);

 return ret;
}
