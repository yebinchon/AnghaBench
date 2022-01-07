
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_phandle_args {int* args; } ;
struct gpio_chip {int ngpio; } ;


 int EINVAL ;
 int PINS_PER_BANK ;

__attribute__((used)) static int sunxi_pinctrl_gpio_of_xlate(struct gpio_chip *gc,
    const struct of_phandle_args *gpiospec,
    u32 *flags)
{
 int pin, base;

 base = PINS_PER_BANK * gpiospec->args[0];
 pin = base + gpiospec->args[1];

 if (pin > gc->ngpio)
  return -EINVAL;

 if (flags)
  *flags = gpiospec->args[2];

 return pin;
}
