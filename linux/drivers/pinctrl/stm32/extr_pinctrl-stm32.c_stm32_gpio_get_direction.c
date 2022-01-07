
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32_gpio_bank {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 struct stm32_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int stm32_gpio_pin (unsigned int) ;
 int stm32_pmx_get_mode (struct stm32_gpio_bank*,int,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int stm32_gpio_get_direction(struct gpio_chip *chip, unsigned int offset)
{
 struct stm32_gpio_bank *bank = gpiochip_get_data(chip);
 int pin = stm32_gpio_pin(offset);
 int ret;
 u32 mode, alt;

 stm32_pmx_get_mode(bank, pin, &mode, &alt);
 if ((alt == 0) && (mode == 0))
  ret = 1;
 else if ((alt == 0) && (mode == 1))
  ret = 0;
 else
  ret = -EINVAL;

 return ret;
}
