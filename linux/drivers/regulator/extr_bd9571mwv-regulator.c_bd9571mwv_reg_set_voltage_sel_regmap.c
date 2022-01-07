
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {int vsel_mask; } ;


 int BD9571MWV_DVFS_SETVID ;
 int regmap_write_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int bd9571mwv_reg_set_voltage_sel_regmap(struct regulator_dev *rdev,
      unsigned int sel)
{
 return regmap_write_bits(rdev->regmap, BD9571MWV_DVFS_SETVID,
     rdev->desc->vsel_mask, sel);
}
