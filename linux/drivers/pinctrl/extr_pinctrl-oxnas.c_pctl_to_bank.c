
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxnas_pinctrl {struct oxnas_gpio_bank* gpio_banks; } ;
struct oxnas_gpio_bank {int dummy; } ;


 unsigned int PINS_PER_BANK ;

__attribute__((used)) static inline struct oxnas_gpio_bank *pctl_to_bank(struct oxnas_pinctrl *pctl,
         unsigned int pin)
{
 return &pctl->gpio_banks[pin / PINS_PER_BANK];
}
