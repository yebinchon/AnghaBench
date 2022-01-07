
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_pinctrl {int reg_gpio; } ;
struct meson_bank {int dummy; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 int REG_IN ;
 struct meson_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int meson_calc_reg_and_bit (struct meson_bank*,unsigned int,int ,unsigned int*,unsigned int*) ;
 int meson_get_bank (struct meson_pinctrl*,unsigned int,struct meson_bank**) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int meson_gpio_get(struct gpio_chip *chip, unsigned gpio)
{
 struct meson_pinctrl *pc = gpiochip_get_data(chip);
 unsigned int reg, bit, val;
 struct meson_bank *bank;
 int ret;

 ret = meson_get_bank(pc, gpio, &bank);
 if (ret)
  return ret;

 meson_calc_reg_and_bit(bank, gpio, REG_IN, &reg, &bit);
 regmap_read(pc->reg_gpio, reg, &val);

 return !!(val & BIT(bit));
}
