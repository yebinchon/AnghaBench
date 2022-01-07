
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
 unsigned int EINVAL ;
 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_read (struct regmap*,int,int*) ;

__attribute__((used)) static unsigned int act8865_get_mode(struct regulator_dev *rdev)
{
 struct regmap *regmap = rdev->regmap;
 int id = rdev_get_id(rdev);
 int reg, ret, val = 0;

 switch (id) {
 case 134:
  reg = ACT8865_DCDC1_CTRL;
  break;
 case 133:
  reg = ACT8865_DCDC2_CTRL;
  break;
 case 132:
  reg = ACT8865_DCDC3_CTRL;
  break;
 case 131:
  reg = ACT8865_LDO1_CTRL;
  break;
 case 130:
  reg = ACT8865_LDO2_CTRL;
  break;
 case 129:
  reg = ACT8865_LDO3_CTRL;
  break;
 case 128:
  reg = ACT8865_LDO4_CTRL;
  break;
 default:
  return -EINVAL;
 }

 ret = regmap_read(regmap, reg, &val);
 if (ret)
  return ret;

 if (id <= 132 && (val & BIT(5)))
  return REGULATOR_MODE_FAST;
 else if (id > 132 && !(val & BIT(5)))
  return REGULATOR_MODE_NORMAL;
 else
  return REGULATOR_MODE_STANDBY;
}
