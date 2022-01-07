
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; } ;


 int pinctrl_gpio_free (unsigned int) ;

__attribute__((used)) static void stm32_gpio_free(struct gpio_chip *chip, unsigned offset)
{
 pinctrl_gpio_free(chip->base + offset);
}
