
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_pinctrl {int reg_pullen; } ;
struct meson_bank {int dummy; } ;


 int BIT (unsigned int) ;
 int REG_PULLEN ;
 int meson_calc_reg_and_bit (struct meson_bank*,unsigned int,int ,unsigned int*,unsigned int*) ;
 int meson_get_bank (struct meson_pinctrl*,unsigned int,struct meson_bank**) ;
 int regmap_update_bits (int ,unsigned int,int ,int ) ;

__attribute__((used)) static int meson_pinconf_disable_bias(struct meson_pinctrl *pc,
          unsigned int pin)
{
 struct meson_bank *bank;
 unsigned int reg, bit = 0;
 int ret;

 ret = meson_get_bank(pc, pin, &bank);
 if (ret)
  return ret;

 meson_calc_reg_and_bit(bank, pin, REG_PULLEN, &reg, &bit);
 ret = regmap_update_bits(pc->reg_pullen, reg, BIT(bit), 0);
 if (ret)
  return ret;

 return 0;
}
