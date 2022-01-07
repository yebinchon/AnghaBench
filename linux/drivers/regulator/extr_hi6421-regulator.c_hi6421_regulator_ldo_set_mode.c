
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct hi6421_regulator_info {int mode_mask; } ;
struct TYPE_2__ {int enable_reg; } ;


 int EINVAL ;


 struct hi6421_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int hi6421_regulator_ldo_set_mode(struct regulator_dev *rdev,
      unsigned int mode)
{
 struct hi6421_regulator_info *info = rdev_get_drvdata(rdev);
 u32 new_mode;

 switch (mode) {
 case 128:
  new_mode = 0;
  break;
 case 129:
  new_mode = info->mode_mask;
  break;
 default:
  return -EINVAL;
 }


 regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
      info->mode_mask, new_mode);

 return 0;
}
