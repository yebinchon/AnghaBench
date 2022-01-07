
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct max8649_regulator_info {int regmap; } ;
struct TYPE_2__ {int vsel_reg; } ;


 unsigned int MAX8649_FORCE_PWM ;
 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_NORMAL ;
 struct max8649_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int max8649_get_mode(struct regulator_dev *rdev)
{
 struct max8649_regulator_info *info = rdev_get_drvdata(rdev);
 unsigned int val;
 int ret;

 ret = regmap_read(info->regmap, rdev->desc->vsel_reg, &val);
 if (ret != 0)
  return ret;
 if (val & MAX8649_FORCE_PWM)
  return REGULATOR_MODE_FAST;
 return REGULATOR_MODE_NORMAL;
}
