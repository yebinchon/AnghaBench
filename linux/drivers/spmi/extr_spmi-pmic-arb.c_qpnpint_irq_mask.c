
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 int QPNPINT_REG_EN_CLR ;
 int hwirq_to_irq (int ) ;
 int qpnpint_spmi_write (struct irq_data*,int ,int *,int) ;

__attribute__((used)) static void qpnpint_irq_mask(struct irq_data *d)
{
 u8 irq = hwirq_to_irq(d->hwirq);
 u8 data = BIT(irq);

 qpnpint_spmi_write(d, QPNPINT_REG_EN_CLR, &data, 1);
}
