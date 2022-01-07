
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pinctrl_dev {int dummy; } ;
struct axp20x_pctl {int regmap; } ;


 int AXP20X_GPIO_FUNCTIONS ;
 int axp20x_gpio_get_reg (unsigned int) ;
 struct axp20x_pctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int,int ,int ) ;

__attribute__((used)) static int axp20x_pmx_set(struct pinctrl_dev *pctldev, unsigned int offset,
     u8 config)
{
 struct axp20x_pctl *pctl = pinctrl_dev_get_drvdata(pctldev);
 int reg;

 reg = axp20x_gpio_get_reg(offset);
 if (reg < 0)
  return reg;

 return regmap_update_bits(pctl->regmap, reg, AXP20X_GPIO_FUNCTIONS,
      config);
}
