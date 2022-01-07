
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct stm32_gpio_bank {int clk; int lock; scalar_t__ base; } ;


 unsigned int GENMASK (unsigned int,unsigned int) ;
 scalar_t__ STM32_GPIO_SPEEDR ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 unsigned int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 stm32_pconf_get_speed(struct stm32_gpio_bank *bank,
 unsigned int offset)
{
 unsigned long flags;
 u32 val;

 clk_enable(bank->clk);
 spin_lock_irqsave(&bank->lock, flags);

 val = readl_relaxed(bank->base + STM32_GPIO_SPEEDR);
 val &= GENMASK(offset * 2 + 1, offset * 2);

 spin_unlock_irqrestore(&bank->lock, flags);
 clk_disable(bank->clk);

 return (val >> (offset * 2));
}
