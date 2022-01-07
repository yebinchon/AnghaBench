
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rockchip_pinctrl {struct regmap* regmap_base; struct regmap* regmap_pmu; } ;
struct rockchip_pin_bank {int bank_num; struct rockchip_pinctrl* drvdata; } ;
struct regmap {int dummy; } ;


 int PX30_PULL_BANK_STRIDE ;
 int PX30_PULL_BITS_PER_PIN ;
 int PX30_PULL_GRF_OFFSET ;
 int PX30_PULL_PINS_PER_REG ;
 int PX30_PULL_PMU_OFFSET ;

__attribute__((used)) static void px30_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
           int pin_num, struct regmap **regmap,
           int *reg, u8 *bit)
{
 struct rockchip_pinctrl *info = bank->drvdata;


 if (bank->bank_num == 0) {
  *regmap = info->regmap_pmu;
  *reg = PX30_PULL_PMU_OFFSET;
 } else {
  *regmap = info->regmap_base;
  *reg = PX30_PULL_GRF_OFFSET;


  *reg -= 0x10;
  *reg += bank->bank_num * PX30_PULL_BANK_STRIDE;
 }

 *reg += ((pin_num / PX30_PULL_PINS_PER_REG) * 4);
 *bit = (pin_num % PX30_PULL_PINS_PER_REG);
 *bit *= PX30_PULL_BITS_PER_PIN;
}
