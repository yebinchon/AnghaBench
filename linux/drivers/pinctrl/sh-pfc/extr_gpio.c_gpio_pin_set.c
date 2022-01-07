
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int gpio_pin_set_value (int ,unsigned int,int) ;
 int gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void gpio_pin_set(struct gpio_chip *gc, unsigned offset, int value)
{
 gpio_pin_set_value(gpiochip_get_data(gc), offset, value);
}
