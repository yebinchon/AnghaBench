
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {scalar_t__ base; } ;


 int pinctrl_gpio_direction_input (scalar_t__) ;

__attribute__((used)) static int axp20x_gpio_input(struct gpio_chip *chip, unsigned int offset)
{
 return pinctrl_gpio_direction_input(chip->base + offset);
}
