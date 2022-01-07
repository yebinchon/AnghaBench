
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct nmk_gpio_chip {struct gpio_chip chip; } ;


 struct nmk_gpio_chip* find_nmk_gpio_from_pin (unsigned int) ;

__attribute__((used)) static struct gpio_chip *find_gc_from_pin(unsigned pin)
{
 struct nmk_gpio_chip *nmk_gpio = find_nmk_gpio_from_pin(pin);

 if (nmk_gpio)
  return &nmk_gpio->chip;
 return ((void*)0);
}
