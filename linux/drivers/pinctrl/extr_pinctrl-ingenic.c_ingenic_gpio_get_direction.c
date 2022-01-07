
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_pinctrl {scalar_t__ version; } ;
struct ingenic_gpio_chip {struct ingenic_pinctrl* jzpc; } ;
struct gpio_chip {unsigned int base; } ;


 scalar_t__ ID_JZ4760 ;
 int JZ4740_GPIO_DIR ;
 int JZ4740_GPIO_SELECT ;
 int JZ4760_GPIO_PAT1 ;
 struct ingenic_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int ingenic_get_pin_config (struct ingenic_pinctrl*,unsigned int,int ) ;

__attribute__((used)) static int ingenic_gpio_get_direction(struct gpio_chip *gc, unsigned int offset)
{
 struct ingenic_gpio_chip *jzgc = gpiochip_get_data(gc);
 struct ingenic_pinctrl *jzpc = jzgc->jzpc;
 unsigned int pin = gc->base + offset;

 if (jzpc->version >= ID_JZ4760)
  return ingenic_get_pin_config(jzpc, pin, JZ4760_GPIO_PAT1);

 if (ingenic_get_pin_config(jzpc, pin, JZ4740_GPIO_SELECT))
  return 1;

 return !ingenic_get_pin_config(jzpc, pin, JZ4740_GPIO_DIR);
}
