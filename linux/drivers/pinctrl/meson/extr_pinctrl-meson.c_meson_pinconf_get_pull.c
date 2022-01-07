
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_pinctrl {int reg_pull; int reg_pullen; } ;
struct meson_bank {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 int PIN_CONFIG_BIAS_DISABLE ;
 int PIN_CONFIG_BIAS_PULL_DOWN ;
 int PIN_CONFIG_BIAS_PULL_UP ;
 int REG_PULL ;
 int REG_PULLEN ;
 int meson_calc_reg_and_bit (struct meson_bank*,unsigned int,int ,unsigned int*,unsigned int*) ;
 int meson_get_bank (struct meson_pinctrl*,unsigned int,struct meson_bank**) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int meson_pinconf_get_pull(struct meson_pinctrl *pc, unsigned int pin)
{
 struct meson_bank *bank;
 unsigned int reg, bit, val;
 int ret, conf;

 ret = meson_get_bank(pc, pin, &bank);
 if (ret)
  return ret;

 meson_calc_reg_and_bit(bank, pin, REG_PULLEN, &reg, &bit);

 ret = regmap_read(pc->reg_pullen, reg, &val);
 if (ret)
  return ret;

 if (!(val & BIT(bit))) {
  conf = PIN_CONFIG_BIAS_DISABLE;
 } else {
  meson_calc_reg_and_bit(bank, pin, REG_PULL, &reg, &bit);

  ret = regmap_read(pc->reg_pull, reg, &val);
  if (ret)
   return ret;

  if (val & BIT(bit))
   conf = PIN_CONFIG_BIAS_PULL_UP;
  else
   conf = PIN_CONFIG_BIAS_PULL_DOWN;
 }

 return conf;
}
