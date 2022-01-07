
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int regs; } ;
struct sirfsoc_gpio_chip {TYPE_1__ chip; } ;
struct sirfsoc_gpio_bank {int lock; } ;


 int SIRFSOC_GPIO_CTL_DATAOUT_MASK ;
 int SIRFSOC_GPIO_CTL_INTR_EN_MASK ;
 int SIRFSOC_GPIO_CTL_OUT_EN_MASK ;
 int readl (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void sirfsoc_gpio_set_output(struct sirfsoc_gpio_chip *sgpio,
        struct sirfsoc_gpio_bank *bank,
        unsigned offset,
        int value)
{
 u32 out_ctrl;
 unsigned long flags;

 spin_lock_irqsave(&bank->lock, flags);

 out_ctrl = readl(sgpio->chip.regs + offset);
 if (value)
  out_ctrl |= SIRFSOC_GPIO_CTL_DATAOUT_MASK;
 else
  out_ctrl &= ~SIRFSOC_GPIO_CTL_DATAOUT_MASK;

 out_ctrl &= ~SIRFSOC_GPIO_CTL_INTR_EN_MASK;
 out_ctrl |= SIRFSOC_GPIO_CTL_OUT_EN_MASK;
 writel(out_ctrl, sgpio->chip.regs + offset);

 spin_unlock_irqrestore(&bank->lock, flags);
}
