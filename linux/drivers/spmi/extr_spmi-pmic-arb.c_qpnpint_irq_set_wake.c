
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_pmic_arb {int irq; } ;
struct irq_data {int dummy; } ;


 struct spmi_pmic_arb* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_irq_wake (int ,unsigned int) ;

__attribute__((used)) static int qpnpint_irq_set_wake(struct irq_data *d, unsigned int on)
{
 struct spmi_pmic_arb *pmic_arb = irq_data_get_irq_chip_data(d);

 return irq_set_irq_wake(pmic_arb->irq, on);
}
