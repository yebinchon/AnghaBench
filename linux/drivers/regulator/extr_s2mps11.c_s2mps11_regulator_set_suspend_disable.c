
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2mps11_info {int dev_type; int suspend_state; } ;
struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int enable_mask; int enable_reg; } ;


 int EINVAL ;







 unsigned int S2MPS14_ENABLE_SUSPEND ;



 unsigned int S2MPU02_DISABLE_SUSPEND ;
 unsigned int S2MPU02_ENABLE_SUSPEND ;




 struct s2mps11_info* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int s2mps11_regulator_set_suspend_disable(struct regulator_dev *rdev)
{
 int ret;
 unsigned int val, state;
 struct s2mps11_info *s2mps11 = rdev_get_drvdata(rdev);
 int rdev_id = rdev_get_id(rdev);


 switch (s2mps11->dev_type) {
 case 141:
  switch (rdev_id) {
  case 140:
  case 139:
  case 138:
  case 137:
   return 0;
  default:
   state = S2MPS14_ENABLE_SUSPEND;
   break;
  }
  break;
 case 136:
 case 135:
  switch (rdev_id) {
  case 134:
   return 0;
  default:
   state = S2MPS14_ENABLE_SUSPEND;
   break;
  }
  break;
 case 133:
  switch (rdev_id) {
  case 131:
  case 130:
  case 129:
  case 128:
  case 132:
   state = S2MPU02_DISABLE_SUSPEND;
   break;
  default:
   state = S2MPU02_ENABLE_SUSPEND;
   break;
  }
  break;
 default:
  return -EINVAL;
 }

 ret = regmap_read(rdev->regmap, rdev->desc->enable_reg, &val);
 if (ret < 0)
  return ret;

 set_bit(rdev_id, s2mps11->suspend_state);







 if (!(val & rdev->desc->enable_mask))
  return 0;

 return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
      rdev->desc->enable_mask, state);
}
