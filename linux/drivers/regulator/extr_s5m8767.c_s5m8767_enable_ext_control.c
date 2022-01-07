
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5m8767_info {TYPE_1__* iodev; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int regmap_pmic; } ;


 int EINVAL ;
 int S5M8767_BUCK9 ;
 int S5M8767_ENCTRL_MASK ;
 int S5M8767_ENCTRL_SHIFT ;
 int S5M8767_ENCTRL_USE_GPIO ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,int,int ,int) ;
 int s5m8767_get_register (struct s5m8767_info*,int,int*,int*) ;

__attribute__((used)) static int s5m8767_enable_ext_control(struct s5m8767_info *s5m8767,
  struct regulator_dev *rdev)
{
 int id = rdev_get_id(rdev);
 int ret, reg, enable_ctrl;

 if (id != S5M8767_BUCK9)
  return -EINVAL;

 ret = s5m8767_get_register(s5m8767, id, &reg, &enable_ctrl);
 if (ret)
  return ret;

 return regmap_update_bits(s5m8767->iodev->regmap_pmic,
   reg, S5M8767_ENCTRL_MASK,
   S5M8767_ENCTRL_USE_GPIO << S5M8767_ENCTRL_SHIFT);
}
