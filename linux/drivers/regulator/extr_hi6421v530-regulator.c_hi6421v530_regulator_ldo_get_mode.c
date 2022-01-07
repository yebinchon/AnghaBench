
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct hi6421v530_regulator_info {unsigned int mode_mask; } ;
struct TYPE_2__ {int enable_reg; } ;


 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_NORMAL ;
 struct hi6421v530_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int hi6421v530_regulator_ldo_get_mode(
     struct regulator_dev *rdev)
{
 struct hi6421v530_regulator_info *info;
 unsigned int reg_val;

 info = rdev_get_drvdata(rdev);
 regmap_read(rdev->regmap, rdev->desc->enable_reg, &reg_val);

 if (reg_val & (info->mode_mask))
  return REGULATOR_MODE_IDLE;

 return REGULATOR_MODE_NORMAL;
}
