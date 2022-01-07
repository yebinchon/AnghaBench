
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rockchip_pinctrl {struct regmap* regmap_base; struct regmap* regmap_pmu; } ;
struct rockchip_pin_bank {int bank_num; struct rockchip_pinctrl* drvdata; } ;
struct regmap {int dummy; } ;


 int RV1108_PULL_BANK_STRIDE ;
 int RV1108_PULL_BITS_PER_PIN ;
 int RV1108_PULL_OFFSET ;
 int RV1108_PULL_PINS_PER_REG ;
 int RV1108_PULL_PMU_OFFSET ;

__attribute__((used)) static void rv1108_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
      int pin_num, struct regmap **regmap,
      int *reg, u8 *bit)
{
 struct rockchip_pinctrl *info = bank->drvdata;


 if (bank->bank_num == 0) {
  *regmap = info->regmap_pmu;
  *reg = RV1108_PULL_PMU_OFFSET;
 } else {
  *reg = RV1108_PULL_OFFSET;
  *regmap = info->regmap_base;

  *reg -= 0x10;
  *reg += bank->bank_num * RV1108_PULL_BANK_STRIDE;
 }

 *reg += ((pin_num / RV1108_PULL_PINS_PER_REG) * 4);
 *bit = (pin_num % RV1108_PULL_PINS_PER_REG);
 *bit *= RV1108_PULL_BITS_PER_PIN;
}
