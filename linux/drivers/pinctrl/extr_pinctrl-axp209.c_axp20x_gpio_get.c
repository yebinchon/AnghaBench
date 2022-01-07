
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct axp20x_pctl {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {scalar_t__ gpio_status_offset; } ;


 int AXP20X_GPIO20_SS ;
 unsigned int BIT (scalar_t__) ;
 struct axp20x_pctl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int axp20x_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct axp20x_pctl *pctl = gpiochip_get_data(chip);
 unsigned int val;
 int ret;

 ret = regmap_read(pctl->regmap, AXP20X_GPIO20_SS, &val);
 if (ret)
  return ret;

 return !!(val & BIT(offset + pctl->desc->gpio_status_offset));
}
