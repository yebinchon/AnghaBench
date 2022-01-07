
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rockchip_pinctrl {struct regmap* regmap_pull; struct regmap* regmap_base; struct regmap* regmap_pmu; } ;
struct rockchip_pin_bank {int bank_num; struct regmap* regmap_pull; struct rockchip_pinctrl* drvdata; } ;
struct regmap {int dummy; } ;


 int RK3188_PULL_BANK_STRIDE ;
 int RK3188_PULL_BITS_PER_PIN ;
 int RK3188_PULL_OFFSET ;
 int RK3188_PULL_PINS_PER_REG ;
 int RK3188_PULL_PMU_OFFSET ;

__attribute__((used)) static void rk3188_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
        int pin_num, struct regmap **regmap,
        int *reg, u8 *bit)
{
 struct rockchip_pinctrl *info = bank->drvdata;


 if (bank->bank_num == 0 && pin_num < 12) {
  *regmap = info->regmap_pmu ? info->regmap_pmu
        : bank->regmap_pull;
  *reg = info->regmap_pmu ? RK3188_PULL_PMU_OFFSET : 0;
  *reg += ((pin_num / RK3188_PULL_PINS_PER_REG) * 4);
  *bit = pin_num % RK3188_PULL_PINS_PER_REG;
  *bit *= RK3188_PULL_BITS_PER_PIN;
 } else {
  *regmap = info->regmap_pull ? info->regmap_pull
         : info->regmap_base;
  *reg = info->regmap_pull ? 0 : RK3188_PULL_OFFSET;


  *reg -= 4;
  *reg += bank->bank_num * RK3188_PULL_BANK_STRIDE;
  *reg += ((pin_num / RK3188_PULL_PINS_PER_REG) * 4);






  *bit = 7 - (pin_num % RK3188_PULL_PINS_PER_REG);
  *bit *= RK3188_PULL_BITS_PER_PIN;
 }
}
