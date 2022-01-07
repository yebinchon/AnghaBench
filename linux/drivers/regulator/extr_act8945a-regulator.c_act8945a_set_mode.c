
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct act8945a_pmic {unsigned int* op_mode; } ;


 int ACT8945A_DCDC1_CTRL ;
 int ACT8945A_DCDC2_CTRL ;
 int ACT8945A_DCDC3_CTRL ;







 int ACT8945A_LDO1_CTRL ;
 int ACT8945A_LDO2_CTRL ;
 int ACT8945A_LDO3_CTRL ;
 int ACT8945A_LDO4_CTRL ;
 int BIT (int) ;
 int EINVAL ;


 struct act8945a_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (struct regmap*,int,int,int) ;

__attribute__((used)) static int act8945a_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 struct act8945a_pmic *act8945a = rdev_get_drvdata(rdev);
 struct regmap *regmap = rdev->regmap;
 int id = rdev_get_id(rdev);
 int reg, ret, val = 0;

 switch (id) {
 case 136:
  reg = ACT8945A_DCDC1_CTRL;
  break;
 case 135:
  reg = ACT8945A_DCDC2_CTRL;
  break;
 case 134:
  reg = ACT8945A_DCDC3_CTRL;
  break;
 case 133:
  reg = ACT8945A_LDO1_CTRL;
  break;
 case 132:
  reg = ACT8945A_LDO2_CTRL;
  break;
 case 131:
  reg = ACT8945A_LDO3_CTRL;
  break;
 case 130:
  reg = ACT8945A_LDO4_CTRL;
  break;
 default:
  return -EINVAL;
 }

 switch (mode) {
 case 128:
  if (id > 134)
   val = BIT(5);
  break;
 case 129:
  if (id <= 134)
   val = BIT(5);
  break;
 default:
  return -EINVAL;
 }

 ret = regmap_update_bits(regmap, reg, BIT(5), val);
 if (ret)
  return ret;

 act8945a->op_mode[id] = mode;

 return 0;
}
