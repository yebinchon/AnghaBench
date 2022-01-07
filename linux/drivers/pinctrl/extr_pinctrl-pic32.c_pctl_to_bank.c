
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_pinctrl {struct pic32_gpio_bank* gpio_banks; } ;
struct pic32_gpio_bank {int dummy; } ;


 unsigned int PINS_PER_BANK ;

__attribute__((used)) static inline struct pic32_gpio_bank *pctl_to_bank(struct pic32_pinctrl *pctl,
      unsigned pin)
{
 return &pctl->gpio_banks[pin / PINS_PER_BANK];
}
