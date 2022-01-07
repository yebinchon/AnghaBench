
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_pinctrl {int reg_gpio; } ;
struct meson_bank {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 int meson_calc_reg_and_bit (struct meson_bank*,unsigned int,unsigned int,unsigned int*,unsigned int*) ;
 int meson_get_bank (struct meson_pinctrl*,unsigned int,struct meson_bank**) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int meson_pinconf_get_gpio_bit(struct meson_pinctrl *pc,
          unsigned int pin,
          unsigned int reg_type)
{
 struct meson_bank *bank;
 unsigned int reg, bit, val;
 int ret;

 ret = meson_get_bank(pc, pin, &bank);
 if (ret)
  return ret;

 meson_calc_reg_and_bit(bank, pin, reg_type, &reg, &bit);
 ret = regmap_read(pc->reg_gpio, reg, &val);
 if (ret)
  return ret;

 return BIT(bit) & val ? 1 : 0;
}
