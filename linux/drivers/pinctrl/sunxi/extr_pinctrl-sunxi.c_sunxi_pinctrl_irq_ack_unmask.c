
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int sunxi_pinctrl_irq_ack (struct irq_data*) ;
 int sunxi_pinctrl_irq_unmask (struct irq_data*) ;

__attribute__((used)) static void sunxi_pinctrl_irq_ack_unmask(struct irq_data *d)
{
 sunxi_pinctrl_irq_ack(d);
 sunxi_pinctrl_irq_unmask(d);
}
