
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rockchip_pinctrl {struct regmap* regmap_base; struct regmap* regmap_pmu; } ;
struct rockchip_pin_bank {int bank_num; struct rockchip_pinctrl* drvdata; } ;
struct regmap {int dummy; } ;


 int RK3288_DRV_BANK_STRIDE ;
 int RK3288_DRV_BITS_PER_PIN ;
 int RK3288_DRV_GRF_OFFSET ;
 int RK3288_DRV_PINS_PER_REG ;
 int RK3288_DRV_PMU_OFFSET ;

__attribute__((used)) static void rk3288_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
        int pin_num, struct regmap **regmap,
        int *reg, u8 *bit)
{
 struct rockchip_pinctrl *info = bank->drvdata;


 if (bank->bank_num == 0) {
  *regmap = info->regmap_pmu;
  *reg = RK3288_DRV_PMU_OFFSET;

  *reg += ((pin_num / RK3288_DRV_PINS_PER_REG) * 4);
  *bit = pin_num % RK3288_DRV_PINS_PER_REG;
  *bit *= RK3288_DRV_BITS_PER_PIN;
 } else {
  *regmap = info->regmap_base;
  *reg = RK3288_DRV_GRF_OFFSET;


  *reg -= 0x10;
  *reg += bank->bank_num * RK3288_DRV_BANK_STRIDE;
  *reg += ((pin_num / RK3288_DRV_PINS_PER_REG) * 4);

  *bit = (pin_num % RK3288_DRV_PINS_PER_REG);
  *bit *= RK3288_DRV_BITS_PER_PIN;
 }
}
