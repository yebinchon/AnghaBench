
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_gpio_bank {int clk; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ STM32_GPIO_IDR ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct stm32_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int stm32_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct stm32_gpio_bank *bank = gpiochip_get_data(chip);
 int ret;

 clk_enable(bank->clk);

 ret = !!(readl_relaxed(bank->base + STM32_GPIO_IDR) & BIT(offset));

 clk_disable(bank->clk);

 return ret;
}
