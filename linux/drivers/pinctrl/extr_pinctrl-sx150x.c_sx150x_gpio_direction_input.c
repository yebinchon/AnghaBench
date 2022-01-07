
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx150x_pinctrl {TYPE_1__* data; int regmap; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int reg_dir; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 struct sx150x_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 scalar_t__ sx150x_pin_is_oscio (struct sx150x_pinctrl*,unsigned int) ;

__attribute__((used)) static int sx150x_gpio_direction_input(struct gpio_chip *chip,
           unsigned int offset)
{
 struct sx150x_pinctrl *pctl = gpiochip_get_data(chip);

 if (sx150x_pin_is_oscio(pctl, offset))
  return -EINVAL;

 return regmap_write_bits(pctl->regmap,
     pctl->data->reg_dir,
     BIT(offset), BIT(offset));
}
