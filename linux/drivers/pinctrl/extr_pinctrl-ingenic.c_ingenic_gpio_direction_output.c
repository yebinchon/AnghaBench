
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {scalar_t__ base; } ;


 int ingenic_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int pinctrl_gpio_direction_output (scalar_t__) ;

__attribute__((used)) static int ingenic_gpio_direction_output(struct gpio_chip *gc,
  unsigned int offset, int value)
{
 ingenic_gpio_set(gc, offset, value);
 return pinctrl_gpio_direction_output(gc->base + offset);
}
