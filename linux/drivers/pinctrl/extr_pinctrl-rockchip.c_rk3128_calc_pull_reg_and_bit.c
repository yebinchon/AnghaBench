
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rockchip_pinctrl {struct regmap* regmap_base; } ;
struct rockchip_pin_bank {int bank_num; struct rockchip_pinctrl* drvdata; } ;
struct regmap {int dummy; } ;


 int RK2928_PULL_BANK_STRIDE ;
 int RK2928_PULL_PINS_PER_REG ;
 int RK3128_PULL_OFFSET ;

__attribute__((used)) static void rk3128_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
      int pin_num, struct regmap **regmap,
      int *reg, u8 *bit)
{
 struct rockchip_pinctrl *info = bank->drvdata;

 *regmap = info->regmap_base;
 *reg = RK3128_PULL_OFFSET;
 *reg += bank->bank_num * RK2928_PULL_BANK_STRIDE;
 *reg += ((pin_num / RK2928_PULL_PINS_PER_REG) * 4);

 *bit = pin_num % RK2928_PULL_PINS_PER_REG;
}
