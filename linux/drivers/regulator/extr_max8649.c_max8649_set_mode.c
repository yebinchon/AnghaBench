
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct max8649_regulator_info {int regmap; } ;
struct TYPE_2__ {int vsel_reg; } ;


 int EINVAL ;
 int MAX8649_FORCE_PWM ;


 struct max8649_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max8649_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 struct max8649_regulator_info *info = rdev_get_drvdata(rdev);

 switch (mode) {
 case 129:
  regmap_update_bits(info->regmap, rdev->desc->vsel_reg,
       MAX8649_FORCE_PWM, MAX8649_FORCE_PWM);
  break;
 case 128:
  regmap_update_bits(info->regmap, rdev->desc->vsel_reg,
       MAX8649_FORCE_PWM, 0);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
