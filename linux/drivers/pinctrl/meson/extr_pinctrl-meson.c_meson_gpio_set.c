
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int gpiochip_get_data (struct gpio_chip*) ;
 int meson_pinconf_set_drive (int ,unsigned int,int) ;

__attribute__((used)) static void meson_gpio_set(struct gpio_chip *chip, unsigned gpio, int value)
{
 meson_pinconf_set_drive(gpiochip_get_data(chip), gpio, value);
}
