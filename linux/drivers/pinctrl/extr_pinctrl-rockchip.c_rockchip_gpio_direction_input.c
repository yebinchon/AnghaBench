
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; } ;


 int pinctrl_gpio_direction_input (unsigned int) ;

__attribute__((used)) static int rockchip_gpio_direction_input(struct gpio_chip *gc, unsigned offset)
{
 return pinctrl_gpio_direction_input(gc->base + offset);
}
