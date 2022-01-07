
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_gpio_bank {int dummy; } ;
struct pinctrl_gpio_range {int gc; } ;
struct pinctrl_dev {int dummy; } ;


 struct stm32_gpio_bank* gpiochip_get_data (int ) ;
 int stm32_gpio_pin (unsigned int) ;
 int stm32_pmx_set_mode (struct stm32_gpio_bank*,int,int,int ) ;

__attribute__((used)) static int stm32_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
   struct pinctrl_gpio_range *range, unsigned gpio,
   bool input)
{
 struct stm32_gpio_bank *bank = gpiochip_get_data(range->gc);
 int pin = stm32_gpio_pin(gpio);

 return stm32_pmx_set_mode(bank, pin, !input, 0);
}
