
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct ingenic_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ ingenic_gpio_get_value (struct ingenic_gpio_chip*,unsigned int) ;

__attribute__((used)) static int ingenic_gpio_get(struct gpio_chip *gc, unsigned int offset)
{
 struct ingenic_gpio_chip *jzgc = gpiochip_get_data(gc);

 return (int) ingenic_gpio_get_value(jzgc, offset);
}
