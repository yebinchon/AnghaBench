
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_gpio_bank {int clk; int lock; scalar_t__ base; } ;


 int GENMASK (int,int) ;
 int STM32_GPIO_AFRL ;
 scalar_t__ STM32_GPIO_MODER ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void stm32_pmx_get_mode(struct stm32_gpio_bank *bank, int pin, u32 *mode,
   u32 *alt)
{
 u32 val;
 int alt_shift = (pin % 8) * 4;
 int alt_offset = STM32_GPIO_AFRL + (pin / 8) * 4;
 unsigned long flags;

 clk_enable(bank->clk);
 spin_lock_irqsave(&bank->lock, flags);

 val = readl_relaxed(bank->base + alt_offset);
 val &= GENMASK(alt_shift + 3, alt_shift);
 *alt = val >> alt_shift;

 val = readl_relaxed(bank->base + STM32_GPIO_MODER);
 val &= GENMASK(pin * 2 + 1, pin * 2);
 *mode = val >> (pin * 2);

 spin_unlock_irqrestore(&bank->lock, flags);
 clk_disable(bank->clk);
}
