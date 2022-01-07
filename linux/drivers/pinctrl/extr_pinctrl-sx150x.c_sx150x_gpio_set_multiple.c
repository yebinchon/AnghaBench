
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx150x_pinctrl {TYPE_1__* data; int regmap; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int reg_data; } ;


 struct sx150x_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_write_bits (int ,int ,unsigned long,unsigned long) ;

__attribute__((used)) static void sx150x_gpio_set_multiple(struct gpio_chip *chip,
         unsigned long *mask,
         unsigned long *bits)
{
 struct sx150x_pinctrl *pctl = gpiochip_get_data(chip);

 regmap_write_bits(pctl->regmap, pctl->data->reg_data, *mask, *bits);
}
