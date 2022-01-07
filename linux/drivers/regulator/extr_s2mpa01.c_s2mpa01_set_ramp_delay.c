
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2mpa01_info {int ramp_delay16; int ramp_delay24; int ramp_delay3; int ramp_delay5; int ramp_delay7; int ramp_delay8910; } ;
struct regulator_dev {int regmap; int dev; } ;




 unsigned int S2MPA01_BUCK16_RAMP_SHIFT ;
 unsigned int S2MPA01_BUCK1_RAMP_EN_SHIFT ;

 unsigned int S2MPA01_BUCK24_RAMP_SHIFT ;
 unsigned int S2MPA01_BUCK2_RAMP_EN_SHIFT ;

 unsigned int S2MPA01_BUCK3_RAMP_EN_SHIFT ;
 unsigned int S2MPA01_BUCK3_RAMP_SHIFT ;

 unsigned int S2MPA01_BUCK4_RAMP_EN_SHIFT ;

 unsigned int S2MPA01_BUCK5_RAMP_SHIFT ;


 unsigned int S2MPA01_BUCK7_RAMP_SHIFT ;

 unsigned int S2MPA01_BUCK8910_RAMP_SHIFT ;

 unsigned int S2MPA01_REG_RAMP1 ;
 unsigned int S2MPA01_REG_RAMP2 ;
 int dev_err (int *,char*) ;
 unsigned int get_ramp_delay (int) ;
 struct s2mpa01_info* rdev_get_drvdata (struct regulator_dev*) ;
 int const rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,unsigned int,int,unsigned int) ;

__attribute__((used)) static int s2mpa01_set_ramp_delay(struct regulator_dev *rdev, int ramp_delay)
{
 struct s2mpa01_info *s2mpa01 = rdev_get_drvdata(rdev);
 unsigned int ramp_val, ramp_shift, ramp_reg = S2MPA01_REG_RAMP2;
 unsigned int ramp_enable = 1, enable_shift = 0;
 int ret;

 switch (rdev_get_id(rdev)) {
 case 137:
  enable_shift = S2MPA01_BUCK1_RAMP_EN_SHIFT;
  if (!ramp_delay) {
   ramp_enable = 0;
   break;
  }

  if (ramp_delay > s2mpa01->ramp_delay16)
   s2mpa01->ramp_delay16 = ramp_delay;
  else
   ramp_delay = s2mpa01->ramp_delay16;

  ramp_shift = S2MPA01_BUCK16_RAMP_SHIFT;
  break;
 case 135:
  enable_shift = S2MPA01_BUCK2_RAMP_EN_SHIFT;
  if (!ramp_delay) {
   ramp_enable = 0;
   break;
  }

  if (ramp_delay > s2mpa01->ramp_delay24)
   s2mpa01->ramp_delay24 = ramp_delay;
  else
   ramp_delay = s2mpa01->ramp_delay24;

  ramp_shift = S2MPA01_BUCK24_RAMP_SHIFT;
  ramp_reg = S2MPA01_REG_RAMP1;
  break;
 case 134:
  enable_shift = S2MPA01_BUCK3_RAMP_EN_SHIFT;
  if (!ramp_delay) {
   ramp_enable = 0;
   break;
  }

  s2mpa01->ramp_delay3 = ramp_delay;
  ramp_shift = S2MPA01_BUCK3_RAMP_SHIFT;
  ramp_reg = S2MPA01_REG_RAMP1;
  break;
 case 133:
  enable_shift = S2MPA01_BUCK4_RAMP_EN_SHIFT;
  if (!ramp_delay) {
   ramp_enable = 0;
   break;
  }

  if (ramp_delay > s2mpa01->ramp_delay24)
   s2mpa01->ramp_delay24 = ramp_delay;
  else
   ramp_delay = s2mpa01->ramp_delay24;

  ramp_shift = S2MPA01_BUCK24_RAMP_SHIFT;
  ramp_reg = S2MPA01_REG_RAMP1;
  break;
 case 132:
  s2mpa01->ramp_delay5 = ramp_delay;
  ramp_shift = S2MPA01_BUCK5_RAMP_SHIFT;
  break;
 case 131:
  if (ramp_delay > s2mpa01->ramp_delay16)
   s2mpa01->ramp_delay16 = ramp_delay;
  else
   ramp_delay = s2mpa01->ramp_delay16;

  ramp_shift = S2MPA01_BUCK16_RAMP_SHIFT;
  break;
 case 130:
  s2mpa01->ramp_delay7 = ramp_delay;
  ramp_shift = S2MPA01_BUCK7_RAMP_SHIFT;
  break;
 case 129:
 case 128:
 case 136:
  if (ramp_delay > s2mpa01->ramp_delay8910)
   s2mpa01->ramp_delay8910 = ramp_delay;
  else
   ramp_delay = s2mpa01->ramp_delay8910;

  ramp_shift = S2MPA01_BUCK8910_RAMP_SHIFT;
  break;
 default:
  return 0;
 }

 if (!ramp_enable)
  goto ramp_disable;


 if (rdev_get_id(rdev) >= 137 &&
   rdev_get_id(rdev) <= 133) {
  ret = regmap_update_bits(rdev->regmap, S2MPA01_REG_RAMP1,
      1 << enable_shift, 1 << enable_shift);
  if (ret) {
   dev_err(&rdev->dev, "failed to enable ramp rate\n");
   return ret;
  }
 }

 ramp_val = get_ramp_delay(ramp_delay);

 return regmap_update_bits(rdev->regmap, ramp_reg, 0x3 << ramp_shift,
      ramp_val << ramp_shift);

ramp_disable:
 return regmap_update_bits(rdev->regmap, S2MPA01_REG_RAMP1,
      1 << enable_shift, 0);
}
