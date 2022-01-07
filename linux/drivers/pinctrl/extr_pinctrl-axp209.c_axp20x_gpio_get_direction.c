
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct axp20x_pctl {int regmap; } ;


 unsigned int AXP20X_GPIO_FUNCTIONS ;
 int axp20x_gpio_get_reg (unsigned int) ;
 struct axp20x_pctl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static int axp20x_gpio_get_direction(struct gpio_chip *chip,
         unsigned int offset)
{
 struct axp20x_pctl *pctl = gpiochip_get_data(chip);
 unsigned int val;
 int reg, ret;

 reg = axp20x_gpio_get_reg(offset);
 if (reg < 0)
  return reg;

 ret = regmap_read(pctl->regmap, reg, &val);
 if (ret)
  return ret;






 if ((val & AXP20X_GPIO_FUNCTIONS) > 2)
  return 0;





 return val & 2;
}
