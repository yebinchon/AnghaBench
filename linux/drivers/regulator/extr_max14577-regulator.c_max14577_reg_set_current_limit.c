
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int regmap; } ;
struct maxim_charger_current {int dummy; } ;
struct max14577 {size_t dev_type; } ;


 int CHGCTRL4_MBCICHWRCH_MASK ;
 int CHGCTRL4_MBCICHWRCL_MASK ;
 int EINVAL ;
 scalar_t__ MAX14577_CHARGER ;
 int MAX14577_CHG_REG_CHG_CTRL4 ;
 int max14577_update_reg (int ,int ,int,int ) ;
 int maxim_charger_calc_reg_current (struct maxim_charger_current const*,int,int,int *) ;
 struct maxim_charger_current* maxim_charger_currents ;
 struct max14577* rdev_get_drvdata (struct regulator_dev*) ;
 scalar_t__ rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int max14577_reg_set_current_limit(struct regulator_dev *rdev,
  int min_uA, int max_uA)
{
 u8 reg_data;
 int ret;
 struct max14577 *max14577 = rdev_get_drvdata(rdev);
 const struct maxim_charger_current *limits =
  &maxim_charger_currents[max14577->dev_type];

 if (rdev_get_id(rdev) != MAX14577_CHARGER)
  return -EINVAL;

 ret = maxim_charger_calc_reg_current(limits, min_uA, max_uA, &reg_data);
 if (ret)
  return ret;

 return max14577_update_reg(rdev->regmap, MAX14577_CHG_REG_CHG_CTRL4,
   CHGCTRL4_MBCICHWRCL_MASK | CHGCTRL4_MBCICHWRCH_MASK,
   reg_data);
}
