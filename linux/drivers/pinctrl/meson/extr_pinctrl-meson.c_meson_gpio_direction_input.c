
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int gpiochip_get_data (struct gpio_chip*) ;
 int meson_pinconf_set_output (int ,unsigned int,int) ;

__attribute__((used)) static int meson_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
{
 return meson_pinconf_set_output(gpiochip_get_data(chip), gpio, 0);
}
