
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_gpio {int pinmux_is_supported; } ;
struct gpio_chip {unsigned int base; } ;


 struct iproc_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinctrl_gpio_free (unsigned int) ;

__attribute__((used)) static void iproc_gpio_free(struct gpio_chip *gc, unsigned offset)
{
 struct iproc_gpio *chip = gpiochip_get_data(gc);
 unsigned gpio = gc->base + offset;

 if (!chip->pinmux_is_supported)
  return;

 pinctrl_gpio_free(gpio);
}
