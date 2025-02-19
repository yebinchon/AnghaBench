
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct axp20x_pctl {int regmap; } ;


 int AXP20X_GPIO_FUNCTIONS ;
 int AXP20X_GPIO_FUNCTION_OUT_HIGH ;
 int AXP20X_GPIO_FUNCTION_OUT_LOW ;
 int axp20x_gpio_get_reg (unsigned int) ;
 struct axp20x_pctl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,int,int ,int ) ;

__attribute__((used)) static void axp20x_gpio_set(struct gpio_chip *chip, unsigned int offset,
       int value)
{
 struct axp20x_pctl *pctl = gpiochip_get_data(chip);
 int reg;

 reg = axp20x_gpio_get_reg(offset);
 if (reg < 0)
  return;

 regmap_update_bits(pctl->regmap, reg,
      AXP20X_GPIO_FUNCTIONS,
      value ? AXP20X_GPIO_FUNCTION_OUT_HIGH :
      AXP20X_GPIO_FUNCTION_OUT_LOW);
}
