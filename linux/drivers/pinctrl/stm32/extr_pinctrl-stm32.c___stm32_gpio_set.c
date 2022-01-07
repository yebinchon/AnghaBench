
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_gpio_bank {int clk; scalar_t__ base; } ;


 int BIT (unsigned int) ;
 scalar_t__ STM32_GPIO_BSRR ;
 scalar_t__ STM32_GPIO_PINS_PER_BANK ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int stm32_gpio_backup_value (struct stm32_gpio_bank*,unsigned int,int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void __stm32_gpio_set(struct stm32_gpio_bank *bank,
 unsigned offset, int value)
{
 stm32_gpio_backup_value(bank, offset, value);

 if (!value)
  offset += STM32_GPIO_PINS_PER_BANK;

 clk_enable(bank->clk);

 writel_relaxed(BIT(offset), bank->base + STM32_GPIO_BSRR);

 clk_disable(bank->clk);
}
