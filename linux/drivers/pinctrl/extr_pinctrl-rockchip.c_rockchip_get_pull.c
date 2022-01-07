
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rockchip_pinctrl {int dev; struct rockchip_pin_ctrl* ctrl; } ;
struct rockchip_pin_ctrl {int type; int (* pull_calc_reg ) (struct rockchip_pin_bank*,int,struct regmap**,int*,int*) ;} ;
struct rockchip_pin_bank {int* pull_type; struct rockchip_pinctrl* drvdata; } ;
struct regmap {int dummy; } ;


 int BIT (int) ;
 int EINVAL ;
 int PIN_CONFIG_BIAS_DISABLE ;
 int PIN_CONFIG_BIAS_PULL_PIN_DEFAULT ;


 int RK3066B ;


 int RK3188_PULL_BITS_PER_PIN ;




 int dev_err (int ,char*) ;
 int regmap_read (struct regmap*,int,int*) ;
 int** rockchip_pull_list ;
 int stub1 (struct rockchip_pin_bank*,int,struct regmap**,int*,int*) ;

__attribute__((used)) static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
{
 struct rockchip_pinctrl *info = bank->drvdata;
 struct rockchip_pin_ctrl *ctrl = info->ctrl;
 struct regmap *regmap;
 int reg, ret, pull_type;
 u8 bit;
 u32 data;


 if (ctrl->type == RK3066B)
  return PIN_CONFIG_BIAS_DISABLE;

 ctrl->pull_calc_reg(bank, pin_num, &regmap, &reg, &bit);

 ret = regmap_read(regmap, reg, &data);
 if (ret)
  return ret;

 switch (ctrl->type) {
 case 134:
 case 133:
  return !(data & BIT(bit))
    ? PIN_CONFIG_BIAS_PULL_PIN_DEFAULT
    : PIN_CONFIG_BIAS_DISABLE;
 case 135:
 case 128:
 case 132:
 case 131:
 case 130:
 case 129:
  pull_type = bank->pull_type[pin_num / 8];
  data >>= bit;
  data &= (1 << RK3188_PULL_BITS_PER_PIN) - 1;

  return rockchip_pull_list[pull_type][data];
 default:
  dev_err(info->dev, "unsupported pinctrl type\n");
  return -EINVAL;
 };
}
