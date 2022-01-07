
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 void pinctrl_gpio_free (unsigned int) ;

__attribute__((used)) static void gpio_pin_free(struct gpio_chip *gc, unsigned offset)
{
 return pinctrl_gpio_free(offset);
}
