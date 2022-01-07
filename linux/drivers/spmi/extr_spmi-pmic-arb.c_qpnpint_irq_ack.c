
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct spmi_pmic_arb {TYPE_1__* ver_ops; } ;
struct irq_data {int hwirq; } ;
struct TYPE_2__ {int (* irq_clear ) (struct spmi_pmic_arb*,int ) ;} ;


 int BIT (int ) ;
 int QPNPINT_REG_LATCHED_CLR ;
 int hwirq_to_apid (int ) ;
 int hwirq_to_irq (int ) ;
 struct spmi_pmic_arb* irq_data_get_irq_chip_data (struct irq_data*) ;
 int qpnpint_spmi_write (struct irq_data*,int ,int *,int) ;
 int stub1 (struct spmi_pmic_arb*,int ) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void qpnpint_irq_ack(struct irq_data *d)
{
 struct spmi_pmic_arb *pmic_arb = irq_data_get_irq_chip_data(d);
 u8 irq = hwirq_to_irq(d->hwirq);
 u16 apid = hwirq_to_apid(d->hwirq);
 u8 data;

 writel_relaxed(BIT(irq), pmic_arb->ver_ops->irq_clear(pmic_arb, apid));

 data = BIT(irq);
 qpnpint_spmi_write(d, QPNPINT_REG_LATCHED_CLR, &data, 1);
}
