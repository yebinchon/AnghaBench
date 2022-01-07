
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {struct regmap* regmap; } ;
struct regmap {int dummy; } ;


 int ACT8945A_DCDC1_SUS ;
 int ACT8945A_DCDC2_SUS ;
 int ACT8945A_DCDC3_SUS ;







 int ACT8945A_LDO1_SUS ;
 int ACT8945A_LDO2_SUS ;
 int ACT8945A_LDO3_SUS ;
 int ACT8945A_LDO4_SUS ;
 int BIT (int) ;
 int EINVAL ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_write (struct regmap*,int,int) ;

__attribute__((used)) static int act8945a_set_suspend_state(struct regulator_dev *rdev, bool enable)
{
 struct regmap *regmap = rdev->regmap;
 int id = rdev_get_id(rdev);
 int reg, val;

 switch (id) {
 case 134:
  reg = ACT8945A_DCDC1_SUS;
  val = 0xa8;
  break;
 case 133:
  reg = ACT8945A_DCDC2_SUS;
  val = 0xa8;
  break;
 case 132:
  reg = ACT8945A_DCDC3_SUS;
  val = 0xa8;
  break;
 case 131:
  reg = ACT8945A_LDO1_SUS;
  val = 0xe8;
  break;
 case 130:
  reg = ACT8945A_LDO2_SUS;
  val = 0xe8;
  break;
 case 129:
  reg = ACT8945A_LDO3_SUS;
  val = 0xe8;
  break;
 case 128:
  reg = ACT8945A_LDO4_SUS;
  val = 0xe8;
  break;
 default:
  return -EINVAL;
 }

 if (enable)
  val |= BIT(4);





 return regmap_write(regmap, reg, val);
}
