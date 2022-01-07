
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; } ;


 int bcm2835_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int pinctrl_gpio_direction_output (unsigned int) ;

__attribute__((used)) static int bcm2835_gpio_direction_output(struct gpio_chip *chip,
  unsigned offset, int value)
{
 bcm2835_gpio_set(chip, offset, value);
 return pinctrl_gpio_direction_output(chip->base + offset);
}
