
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2mps11_info {int ramp_delay16; int ramp_delay2; int ramp_delay34; int ramp_delay5; int ramp_delay7810; int ramp_delay9; } ;
struct regulator_dev {int regmap; int dev; } ;




 unsigned int S2MPS11_BUCK16_RAMP_SHIFT ;

 unsigned int S2MPS11_BUCK2_RAMP_EN_SHIFT ;
 unsigned int S2MPS11_BUCK2_RAMP_SHIFT ;

 unsigned int S2MPS11_BUCK34_RAMP_SHIFT ;
 unsigned int S2MPS11_BUCK3_RAMP_EN_SHIFT ;

 unsigned int S2MPS11_BUCK4_RAMP_EN_SHIFT ;

 unsigned int S2MPS11_BUCK5_RAMP_SHIFT ;

 unsigned int S2MPS11_BUCK6_RAMP_EN_SHIFT ;

 unsigned int S2MPS11_BUCK7810_RAMP_SHIFT ;


 unsigned int S2MPS11_BUCK9_RAMP_SHIFT ;
 unsigned int S2MPS11_REG_RAMP ;
 unsigned int S2MPS11_REG_RAMP_BUCK ;
 int dev_err (int *,char*) ;
 unsigned int get_ramp_delay (int) ;
 struct s2mps11_info* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,unsigned int,int,unsigned int) ;

__attribute__((used)) static int s2mps11_set_ramp_delay(struct regulator_dev *rdev, int ramp_delay)
{
 struct s2mps11_info *s2mps11 = rdev_get_drvdata(rdev);
 unsigned int ramp_val, ramp_shift, ramp_reg = S2MPS11_REG_RAMP_BUCK;
 unsigned int ramp_enable = 1, enable_shift = 0;
 int rdev_id = rdev_get_id(rdev);
 int ret;

 switch (rdev_id) {
 case 137:
  if (ramp_delay > s2mps11->ramp_delay16)
   s2mps11->ramp_delay16 = ramp_delay;
  else
   ramp_delay = s2mps11->ramp_delay16;

  ramp_shift = S2MPS11_BUCK16_RAMP_SHIFT;
  break;
 case 135:
  enable_shift = S2MPS11_BUCK2_RAMP_EN_SHIFT;
  if (!ramp_delay) {
   ramp_enable = 0;
   break;
  }

  s2mps11->ramp_delay2 = ramp_delay;
  ramp_shift = S2MPS11_BUCK2_RAMP_SHIFT;
  ramp_reg = S2MPS11_REG_RAMP;
  break;
 case 134:
  enable_shift = S2MPS11_BUCK3_RAMP_EN_SHIFT;
  if (!ramp_delay) {
   ramp_enable = 0;
   break;
  }

  if (ramp_delay > s2mps11->ramp_delay34)
   s2mps11->ramp_delay34 = ramp_delay;
  else
   ramp_delay = s2mps11->ramp_delay34;

  ramp_shift = S2MPS11_BUCK34_RAMP_SHIFT;
  ramp_reg = S2MPS11_REG_RAMP;
  break;
 case 133:
  enable_shift = S2MPS11_BUCK4_RAMP_EN_SHIFT;
  if (!ramp_delay) {
   ramp_enable = 0;
   break;
  }

  if (ramp_delay > s2mps11->ramp_delay34)
   s2mps11->ramp_delay34 = ramp_delay;
  else
   ramp_delay = s2mps11->ramp_delay34;

  ramp_shift = S2MPS11_BUCK34_RAMP_SHIFT;
  ramp_reg = S2MPS11_REG_RAMP;
  break;
 case 132:
  s2mps11->ramp_delay5 = ramp_delay;
  ramp_shift = S2MPS11_BUCK5_RAMP_SHIFT;
  break;
 case 131:
  enable_shift = S2MPS11_BUCK6_RAMP_EN_SHIFT;
  if (!ramp_delay) {
   ramp_enable = 0;
   break;
  }

  if (ramp_delay > s2mps11->ramp_delay16)
   s2mps11->ramp_delay16 = ramp_delay;
  else
   ramp_delay = s2mps11->ramp_delay16;

  ramp_shift = S2MPS11_BUCK16_RAMP_SHIFT;
  break;
 case 130:
 case 129:
 case 136:
  if (ramp_delay > s2mps11->ramp_delay7810)
   s2mps11->ramp_delay7810 = ramp_delay;
  else
   ramp_delay = s2mps11->ramp_delay7810;

  ramp_shift = S2MPS11_BUCK7810_RAMP_SHIFT;
  break;
 case 128:
  s2mps11->ramp_delay9 = ramp_delay;
  ramp_shift = S2MPS11_BUCK9_RAMP_SHIFT;
  break;
 default:
  return 0;
 }

 if (!ramp_enable)
  goto ramp_disable;


 if ((rdev_id >= 135 && rdev_id <= 133) ||
     rdev_id == 131) {
  ret = regmap_update_bits(rdev->regmap, S2MPS11_REG_RAMP,
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
 return regmap_update_bits(rdev->regmap, S2MPS11_REG_RAMP,
      1 << enable_shift, 0);
}
