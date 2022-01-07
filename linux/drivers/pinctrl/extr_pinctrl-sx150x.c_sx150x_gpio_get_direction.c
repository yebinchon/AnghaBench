
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx150x_pinctrl {TYPE_1__* data; int regmap; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int reg_dir; } ;


 unsigned int BIT (unsigned int) ;
 struct sx150x_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 scalar_t__ sx150x_pin_is_oscio (struct sx150x_pinctrl*,unsigned int) ;

__attribute__((used)) static int sx150x_gpio_get_direction(struct gpio_chip *chip,
          unsigned int offset)
{
 struct sx150x_pinctrl *pctl = gpiochip_get_data(chip);
 unsigned int value;
 int ret;

 if (sx150x_pin_is_oscio(pctl, offset))
  return 0;

 ret = regmap_read(pctl->regmap, pctl->data->reg_dir, &value);
 if (ret < 0)
  return ret;

 return !!(value & BIT(offset));
}
