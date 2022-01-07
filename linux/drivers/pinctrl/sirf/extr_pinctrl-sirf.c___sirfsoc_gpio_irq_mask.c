
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ regs; } ;
struct sirfsoc_gpio_chip {int lock; TYPE_1__ chip; } ;
struct sirfsoc_gpio_bank {int id; } ;


 scalar_t__ SIRFSOC_GPIO_CTL_INTR_EN_MASK ;
 scalar_t__ SIRFSOC_GPIO_CTL_INTR_STS_MASK ;
 scalar_t__ SIRFSOC_GPIO_CTRL (int ,int) ;
 scalar_t__ readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void __sirfsoc_gpio_irq_mask(struct sirfsoc_gpio_chip *sgpio,
        struct sirfsoc_gpio_bank *bank,
        int idx)
{
 u32 val, offset;
 unsigned long flags;

 offset = SIRFSOC_GPIO_CTRL(bank->id, idx);

 spin_lock_irqsave(&sgpio->lock, flags);

 val = readl(sgpio->chip.regs + offset);
 val &= ~SIRFSOC_GPIO_CTL_INTR_EN_MASK;
 val &= ~SIRFSOC_GPIO_CTL_INTR_STS_MASK;
 writel(val, sgpio->chip.regs + offset);

 spin_unlock_irqrestore(&sgpio->lock, flags);
}
