
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct da903x_regulator_info {int max_uV; } ;
struct TYPE_2__ {int min_uV; int uV_step; } ;


 int EINVAL ;
 struct da903x_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int da9030_list_ldo14_voltage(struct regulator_dev *rdev,
         unsigned selector)
{
 struct da903x_regulator_info *info = rdev_get_drvdata(rdev);
 int volt;

 if (selector & 0x4)
  volt = rdev->desc->min_uV +
         rdev->desc->uV_step * (3 - (selector & ~0x4));
 else
  volt = (info->max_uV + rdev->desc->min_uV) / 2 +
         rdev->desc->uV_step * (selector & ~0x4);

 if (volt > info->max_uV)
  return -EINVAL;

 return volt;
}
