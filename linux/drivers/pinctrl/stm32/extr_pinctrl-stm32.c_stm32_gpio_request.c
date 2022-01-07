
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_pinctrl {int dev; int pctl_dev; } ;
struct TYPE_2__ {int parent; } ;
struct stm32_gpio_bank {unsigned int bank_nr; TYPE_1__ gpio_chip; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct gpio_chip {scalar_t__ base; } ;


 int EINVAL ;
 unsigned int STM32_GPIO_PINS_PER_BANK ;
 int dev_err (int ,char*,int) ;
 struct stm32_pinctrl* dev_get_drvdata (int ) ;
 struct stm32_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 struct pinctrl_gpio_range* pinctrl_find_gpio_range_from_pin_nolock (int ,int) ;
 int pinctrl_gpio_request (scalar_t__) ;

__attribute__((used)) static int stm32_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct stm32_gpio_bank *bank = gpiochip_get_data(chip);
 struct stm32_pinctrl *pctl = dev_get_drvdata(bank->gpio_chip.parent);
 struct pinctrl_gpio_range *range;
 int pin = offset + (bank->bank_nr * STM32_GPIO_PINS_PER_BANK);

 range = pinctrl_find_gpio_range_from_pin_nolock(pctl->pctl_dev, pin);
 if (!range) {
  dev_err(pctl->dev, "pin %d not in range.\n", pin);
  return -EINVAL;
 }

 return pinctrl_gpio_request(chip->base + offset);
}
