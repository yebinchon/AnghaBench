
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {unsigned int base; int* pins; int pin_base; } ;



__attribute__((used)) static inline int gpio_to_pin(struct pinctrl_gpio_range *range,
    unsigned int gpio)
{
 unsigned int offset = gpio - range->base;
 if (range->pins)
  return range->pins[offset];
 else
  return range->pin_base + offset;
}
