
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sunxi_pinctrl {scalar_t__ membase; int desc; } ;
struct irq_data {int hwirq; } ;


 struct sunxi_pinctrl* irq_data_get_irq_chip_data (struct irq_data*) ;
 int sunxi_irq_status_offset (int ) ;
 scalar_t__ sunxi_irq_status_reg (int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sunxi_pinctrl_irq_ack(struct irq_data *d)
{
 struct sunxi_pinctrl *pctl = irq_data_get_irq_chip_data(d);
 u32 status_reg = sunxi_irq_status_reg(pctl->desc, d->hwirq);
 u8 status_idx = sunxi_irq_status_offset(d->hwirq);


 writel(1 << status_idx, pctl->membase + status_reg);
}
