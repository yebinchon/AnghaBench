
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; } ;


 int pinctrl_gpio_direction_input (unsigned int) ;

__attribute__((used)) static int st_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
{
 pinctrl_gpio_direction_input(chip->base + offset);

 return 0;
}
