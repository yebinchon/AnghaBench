
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; } ;


 int pinctrl_gpio_direction_output (unsigned int) ;
 int rockchip_gpio_set (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int rockchip_gpio_direction_output(struct gpio_chip *gc,
       unsigned offset, int value)
{
 rockchip_gpio_set(gc, offset, value);
 return pinctrl_gpio_direction_output(gc->base + offset);
}
