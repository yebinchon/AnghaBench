
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {struct regmap* regmap; } ;
struct regmap {int dummy; } ;


 int ACT8865_DCDC1_CTRL ;
 int ACT8865_DCDC2_CTRL ;
 int ACT8865_DCDC3_CTRL ;







 int ACT8865_LDO1_CTRL ;
 int ACT8865_LDO2_CTRL ;
 int ACT8865_LDO3_CTRL ;
 int ACT8865_LDO4_CTRL ;
 int BIT (int) ;
 int EINVAL ;



 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (struct regmap*,int,int,int) ;

__attribute__((used)) static int act8865_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 struct regmap *regmap = rdev->regmap;
 int id = rdev_get_id(rdev);
 int reg, val = 0;

 switch (id) {
 case 137:
  reg = ACT8865_DCDC1_CTRL;
  break;
 case 136:
  reg = ACT8865_DCDC2_CTRL;
  break;
 case 135:
  reg = ACT8865_DCDC3_CTRL;
  break;
 case 134:
  reg = ACT8865_LDO1_CTRL;
  break;
 case 133:
  reg = ACT8865_LDO2_CTRL;
  break;
 case 132:
  reg = ACT8865_LDO3_CTRL;
  break;
 case 131:
  reg = ACT8865_LDO4_CTRL;
  break;
 default:
  return -EINVAL;
 }

 switch (mode) {
 case 130:
 case 129:
  if (id <= 135)
   val = BIT(5);
  break;
 case 128:
  if (id > 135)
   val = BIT(5);
  break;
 default:
  return -EINVAL;
 }

 return regmap_update_bits(regmap, reg, BIT(5), val);
}
