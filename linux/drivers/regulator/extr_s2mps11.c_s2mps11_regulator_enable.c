
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2mps11_info {int dev_type; int suspend_state; int * ext_control_gpiod; } ;
struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int enable_mask; int enable_reg; } ;


 int EINVAL ;



 unsigned int S2MPS14_ENABLE_EXT_CONTROL ;
 unsigned int S2MPS14_ENABLE_SUSPEND ;

 unsigned int S2MPU02_ENABLE_SUSPEND ;
 struct s2mps11_info* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int s2mps11_regulator_enable(struct regulator_dev *rdev)
{
 struct s2mps11_info *s2mps11 = rdev_get_drvdata(rdev);
 int rdev_id = rdev_get_id(rdev);
 unsigned int val;

 switch (s2mps11->dev_type) {
 case 131:
  if (test_bit(rdev_id, s2mps11->suspend_state))
   val = S2MPS14_ENABLE_SUSPEND;
  else
   val = rdev->desc->enable_mask;
  break;
 case 130:
 case 129:
  if (test_bit(rdev_id, s2mps11->suspend_state))
   val = S2MPS14_ENABLE_SUSPEND;
  else if (s2mps11->ext_control_gpiod[rdev_id])
   val = S2MPS14_ENABLE_EXT_CONTROL;
  else
   val = rdev->desc->enable_mask;
  break;
 case 128:
  if (test_bit(rdev_id, s2mps11->suspend_state))
   val = S2MPU02_ENABLE_SUSPEND;
  else
   val = rdev->desc->enable_mask;
  break;
 default:
  return -EINVAL;
 }

 return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
   rdev->desc->enable_mask, val);
}
