
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rockchip_pinctrl {int dev; struct rockchip_pin_ctrl* ctrl; } ;
struct rockchip_pin_ctrl {int type; int (* pull_calc_reg ) (struct rockchip_pin_bank*,int,struct regmap**,int*,int*) ;} ;
struct rockchip_pin_bank {int* pull_type; int bank_num; struct rockchip_pinctrl* drvdata; } ;
struct regmap {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int BIT (int) ;
 int EINVAL ;
 int PIN_CONFIG_BIAS_DISABLE ;


 int RK3066B ;


 int RK3188_PULL_BITS_PER_PIN ;




 int dev_dbg (int ,char*,int ,int,int) ;
 int dev_err (int ,char*,...) ;
 int regmap_update_bits (struct regmap*,int,int,int) ;
 int regmap_write (struct regmap*,int,int) ;
 int** rockchip_pull_list ;
 int stub1 (struct rockchip_pin_bank*,int,struct regmap**,int*,int*) ;

__attribute__((used)) static int rockchip_set_pull(struct rockchip_pin_bank *bank,
     int pin_num, int pull)
{
 struct rockchip_pinctrl *info = bank->drvdata;
 struct rockchip_pin_ctrl *ctrl = info->ctrl;
 struct regmap *regmap;
 int reg, ret, i, pull_type;
 u8 bit;
 u32 data, rmask;

 dev_dbg(info->dev, "setting pull of GPIO%d-%d to %d\n",
   bank->bank_num, pin_num, pull);


 if (ctrl->type == RK3066B)
  return pull ? -EINVAL : 0;

 ctrl->pull_calc_reg(bank, pin_num, &regmap, &reg, &bit);

 switch (ctrl->type) {
 case 134:
 case 133:
  data = BIT(bit + 16);
  if (pull == PIN_CONFIG_BIAS_DISABLE)
   data |= BIT(bit);
  ret = regmap_write(regmap, reg, data);
  break;
 case 135:
 case 128:
 case 132:
 case 131:
 case 130:
 case 129:
  pull_type = bank->pull_type[pin_num / 8];
  ret = -EINVAL;
  for (i = 0; i < ARRAY_SIZE(rockchip_pull_list[pull_type]);
   i++) {
   if (rockchip_pull_list[pull_type][i] == pull) {
    ret = i;
    break;
   }
  }

  if (ret < 0) {
   dev_err(info->dev, "unsupported pull setting %d\n",
    pull);
   return ret;
  }


  data = ((1 << RK3188_PULL_BITS_PER_PIN) - 1) << (bit + 16);
  rmask = data | (data >> 16);
  data |= (ret << bit);

  ret = regmap_update_bits(regmap, reg, rmask, data);
  break;
 default:
  dev_err(info->dev, "unsupported pinctrl type\n");
  return -EINVAL;
 }

 return ret;
}
