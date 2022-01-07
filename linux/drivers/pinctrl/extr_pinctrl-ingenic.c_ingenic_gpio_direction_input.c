
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {scalar_t__ base; } ;


 int pinctrl_gpio_direction_input (scalar_t__) ;

__attribute__((used)) static int ingenic_gpio_direction_input(struct gpio_chip *gc,
  unsigned int offset)
{
 return pinctrl_gpio_direction_input(gc->base + offset);
}
