
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {struct regmap* regmap; } ;
struct regmap {int dummy; } ;


 int CHGCTRL2_MBCHOSTEN_MASK ;
 int EINVAL ;

 int MAX14577_CHG_REG_CHG_CTRL2 ;
 int MAX14577_CHG_REG_STATUS3 ;
 int STATUS3_CGMBC_MASK ;
 int max14577_read_reg (struct regmap*,int ,int*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int max14577_reg_is_enabled(struct regulator_dev *rdev)
{
 int rid = rdev_get_id(rdev);
 struct regmap *rmap = rdev->regmap;
 u8 reg_data;

 switch (rid) {
 case 128:
  max14577_read_reg(rmap, MAX14577_CHG_REG_CHG_CTRL2, &reg_data);
  if ((reg_data & CHGCTRL2_MBCHOSTEN_MASK) == 0)
   return 0;
  max14577_read_reg(rmap, MAX14577_CHG_REG_STATUS3, &reg_data);
  if ((reg_data & STATUS3_CGMBC_MASK) == 0)
   return 0;

  return 1;
 default:
  return -EINVAL;
 }
}
