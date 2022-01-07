
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regulator_dev {int regmap; } ;
struct axp20x_dev {int variant; } ;




 int AXP20X_DCDC2 ;
 int AXP20X_DCDC3 ;
 unsigned int AXP20X_DCDC_MODE ;
 unsigned int AXP20X_WORKMODE_DCDC2_MASK ;
 unsigned int AXP20X_WORKMODE_DCDC3_MASK ;


 int AXP22X_DCDC1 ;
 int AXP22X_DCDC5 ;
 unsigned int AXP22X_WORKMODE_DCDCX_MASK (int ) ;
 int AXP803_DCDC1 ;
 int AXP803_DCDC6 ;

 unsigned int AXP806_DCDC_MODE_CTRL2 ;


 int AXP813_DCDC1 ;
 int AXP813_DCDC7 ;

 int EINVAL ;
 int WARN_ON (int) ;
 int ffs (unsigned int) ;
 struct axp20x_dev* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int axp20x_set_dcdc_workmode(struct regulator_dev *rdev, int id, u32 workmode)
{
 struct axp20x_dev *axp20x = rdev_get_drvdata(rdev);
 unsigned int reg = AXP20X_DCDC_MODE;
 unsigned int mask;

 switch (axp20x->variant) {
 case 135:
 case 134:
  if ((id != AXP20X_DCDC2) && (id != AXP20X_DCDC3))
   return -EINVAL;

  mask = AXP20X_WORKMODE_DCDC2_MASK;
  if (id == AXP20X_DCDC3)
   mask = AXP20X_WORKMODE_DCDC3_MASK;

  workmode <<= ffs(mask) - 1;
  break;

 case 130:




  reg = AXP806_DCDC_MODE_CTRL2;

 case 133:
 case 132:
 case 129:
  if (id < AXP22X_DCDC1 || id > AXP22X_DCDC5)
   return -EINVAL;

  mask = AXP22X_WORKMODE_DCDCX_MASK(id - AXP22X_DCDC1);
  workmode <<= id - AXP22X_DCDC1;
  break;

 case 131:
  if (id < AXP803_DCDC1 || id > AXP803_DCDC6)
   return -EINVAL;

  mask = AXP22X_WORKMODE_DCDCX_MASK(id - AXP803_DCDC1);
  workmode <<= id - AXP803_DCDC1;
  break;

 case 128:
  if (id < AXP813_DCDC1 || id > AXP813_DCDC7)
   return -EINVAL;

  mask = AXP22X_WORKMODE_DCDCX_MASK(id - AXP813_DCDC1);
  workmode <<= id - AXP813_DCDC1;
  break;

 default:

  WARN_ON(1);
  return -EINVAL;
 }

 return regmap_update_bits(rdev->regmap, reg, mask, workmode);
}
