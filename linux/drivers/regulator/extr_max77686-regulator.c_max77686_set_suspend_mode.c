
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct max77686_data {unsigned int* opmode; } ;
struct TYPE_2__ {int enable_mask; int enable_reg; int name; } ;


 int EINVAL ;
 int MAX77686_BUCK5 ;
 unsigned int MAX77686_LDO_LOWPOWER_PWRREQ ;
 unsigned int MAX77686_OPMODE_SHIFT ;


 unsigned int max77686_map_normal_mode (struct max77686_data*,int) ;
 int pr_warn (char*,int ,unsigned int) ;
 struct max77686_data* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77686_set_suspend_mode(struct regulator_dev *rdev,
         unsigned int mode)
{
 struct max77686_data *max77686 = rdev_get_drvdata(rdev);
 unsigned int val;
 int ret, id = rdev_get_id(rdev);


 if (id >= MAX77686_BUCK5)
  return 0;

 switch (mode) {
 case 129:
  val = MAX77686_LDO_LOWPOWER_PWRREQ;
  break;
 case 128:
  val = max77686_map_normal_mode(max77686, id);
  break;
 default:
  pr_warn("%s: regulator_suspend_mode : 0x%x not supported\n",
   rdev->desc->name, mode);
  return -EINVAL;
 }

 ret = regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
      rdev->desc->enable_mask,
      val << MAX77686_OPMODE_SHIFT);
 if (ret)
  return ret;

 max77686->opmode[id] = val;
 return 0;
}
