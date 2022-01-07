
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spmi_pmic_arb {TYPE_1__* spmic; } ;
struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;
typedef int irq_flow_handler_t ;
struct TYPE_2__ {int dev; } ;


 unsigned int IRQ_TYPE_EDGE_BOTH ;
 int dev_dbg (int *,char*,unsigned int,int ,unsigned int) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int ,int *,struct spmi_pmic_arb*,int ,int *,int *) ;
 int pmic_arb_irqchip ;

__attribute__((used)) static void qpnpint_irq_domain_map(struct spmi_pmic_arb *pmic_arb,
       struct irq_domain *domain, unsigned int virq,
       irq_hw_number_t hwirq, unsigned int type)
{
 irq_flow_handler_t handler;

 dev_dbg(&pmic_arb->spmic->dev, "virq = %u, hwirq = %lu, type = %u\n",
  virq, hwirq, type);

 if (type & IRQ_TYPE_EDGE_BOTH)
  handler = handle_edge_irq;
 else
  handler = handle_level_irq;

 irq_domain_set_info(domain, virq, hwirq, &pmic_arb_irqchip, pmic_arb,
       handler, ((void*)0), ((void*)0));
}
