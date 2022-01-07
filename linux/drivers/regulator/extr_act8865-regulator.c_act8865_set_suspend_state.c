
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int ACT8865_DCDC1_SUS ;
 int ACT8865_DCDC2_SUS ;
 int ACT8865_DCDC3_SUS ;







 int ACT8865_LDO1_SUS ;
 int ACT8865_LDO2_SUS ;
 int ACT8865_LDO3_SUS ;
 int ACT8865_LDO4_SUS ;
 int BIT (int) ;
 int EINVAL ;
 int regmap_write (struct regmap*,int,int) ;

__attribute__((used)) static int act8865_set_suspend_state(struct regulator_dev *rdev, bool enable)
{
 struct regmap *regmap = rdev->regmap;
 int id = rdev->desc->id, reg, val;

 switch (id) {
 case 134:
  reg = ACT8865_DCDC1_SUS;
  val = 0xa8;
  break;
 case 133:
  reg = ACT8865_DCDC2_SUS;
  val = 0xa8;
  break;
 case 132:
  reg = ACT8865_DCDC3_SUS;
  val = 0xa8;
  break;
 case 131:
  reg = ACT8865_LDO1_SUS;
  val = 0xe8;
  break;
 case 130:
  reg = ACT8865_LDO2_SUS;
  val = 0xe8;
  break;
 case 129:
  reg = ACT8865_LDO3_SUS;
  val = 0xe8;
  break;
 case 128:
  reg = ACT8865_LDO4_SUS;
  val = 0xe8;
  break;
 default:
  return -EINVAL;
 }

 if (enable)
  val |= BIT(4);





 return regmap_write(regmap, reg, val);
}
