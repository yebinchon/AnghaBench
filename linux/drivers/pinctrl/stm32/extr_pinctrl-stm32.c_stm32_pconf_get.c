
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_gpio_bank {int clk; int lock; scalar_t__ base; } ;


 int BIT (unsigned int) ;
 scalar_t__ STM32_GPIO_IDR ;
 scalar_t__ STM32_GPIO_ODR ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool stm32_pconf_get(struct stm32_gpio_bank *bank,
 unsigned int offset, bool dir)
{
 unsigned long flags;
 u32 val;

 clk_enable(bank->clk);
 spin_lock_irqsave(&bank->lock, flags);

 if (dir)
  val = !!(readl_relaxed(bank->base + STM32_GPIO_IDR) &
    BIT(offset));
 else
  val = !!(readl_relaxed(bank->base + STM32_GPIO_ODR) &
    BIT(offset));

 spin_unlock_irqrestore(&bank->lock, flags);
 clk_disable(bank->clk);

 return val;
}
