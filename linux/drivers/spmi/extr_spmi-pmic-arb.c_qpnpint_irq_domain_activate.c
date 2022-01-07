
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct spmi_pmic_arb {scalar_t__ ee; TYPE_2__* apid_data; TYPE_1__* spmic; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;
struct TYPE_4__ {scalar_t__ irq_ee; } ;
struct TYPE_3__ {int dev; } ;


 int ENODEV ;
 int dev_err (int *,char*,size_t,size_t,size_t,scalar_t__,scalar_t__) ;
 size_t hwirq_to_apid (int ) ;
 size_t hwirq_to_irq (int ) ;
 size_t hwirq_to_per (int ) ;
 size_t hwirq_to_sid (int ) ;
 struct spmi_pmic_arb* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int qpnpint_irq_domain_activate(struct irq_domain *domain,
           struct irq_data *d, bool reserve)
{
 struct spmi_pmic_arb *pmic_arb = irq_data_get_irq_chip_data(d);
 u16 periph = hwirq_to_per(d->hwirq);
 u16 apid = hwirq_to_apid(d->hwirq);
 u16 sid = hwirq_to_sid(d->hwirq);
 u16 irq = hwirq_to_irq(d->hwirq);

 if (pmic_arb->apid_data[apid].irq_ee != pmic_arb->ee) {
  dev_err(&pmic_arb->spmic->dev, "failed to xlate sid = %#x, periph = %#x, irq = %u: ee=%u but owner=%u\n",
   sid, periph, irq, pmic_arb->ee,
   pmic_arb->apid_data[apid].irq_ee);
  return -ENODEV;
 }

 return 0;
}
