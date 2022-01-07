
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sunxi_pinctrl {int membase; int lock; int desc; } ;
struct irq_data {int hwirq; } ;


 struct sunxi_pinctrl* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (int) ;
 int sunxi_irq_ctrl_offset (int ) ;
 int sunxi_irq_ctrl_reg (int ,int ) ;
 int writel (int,int) ;

__attribute__((used)) static void sunxi_pinctrl_irq_unmask(struct irq_data *d)
{
 struct sunxi_pinctrl *pctl = irq_data_get_irq_chip_data(d);
 u32 reg = sunxi_irq_ctrl_reg(pctl->desc, d->hwirq);
 u8 idx = sunxi_irq_ctrl_offset(d->hwirq);
 unsigned long flags;
 u32 val;

 raw_spin_lock_irqsave(&pctl->lock, flags);


 val = readl(pctl->membase + reg);
 writel(val | (1 << idx), pctl->membase + reg);

 raw_spin_unlock_irqrestore(&pctl->lock, flags);
}
