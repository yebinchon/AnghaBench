
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcs_soc_data {int irq; int irq_status_mask; int irq_enable_mask; } ;
struct TYPE_2__ {char const* name; int irq_set_wake; int irq_unmask; void* irq_mask; void* irq_ack; } ;
struct pcs_device {int size; int domain; TYPE_1__ chip; int irqs; struct pcs_soc_data socdata; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_NO_SUSPEND ;
 int IRQF_NO_THREAD ;
 int IRQF_SHARED ;
 scalar_t__ PCS_QUIRK_HAS_SHARED_IRQ ;
 int irq_domain_add_simple (struct device_node*,int,int ,int *,struct pcs_soc_data*) ;
 int irq_set_chained_handler (int,int *) ;
 int irq_set_chained_handler_and_data (int,int ,struct pcs_soc_data*) ;
 int pcs_irq_chain_handler ;
 int pcs_irq_handler ;
 void* pcs_irq_mask ;
 int pcs_irq_set_wake ;
 int pcs_irq_unmask ;
 int pcs_irqdomain_ops ;
 int request_irq (int,int ,int,char const*,struct pcs_soc_data*) ;

__attribute__((used)) static int pcs_irq_init_chained_handler(struct pcs_device *pcs,
     struct device_node *np)
{
 struct pcs_soc_data *pcs_soc = &pcs->socdata;
 const char *name = "pinctrl";
 int num_irqs;

 if (!pcs_soc->irq_enable_mask ||
     !pcs_soc->irq_status_mask) {
  pcs_soc->irq = -1;
  return -EINVAL;
 }

 INIT_LIST_HEAD(&pcs->irqs);
 pcs->chip.name = name;
 pcs->chip.irq_ack = pcs_irq_mask;
 pcs->chip.irq_mask = pcs_irq_mask;
 pcs->chip.irq_unmask = pcs_irq_unmask;
 pcs->chip.irq_set_wake = pcs_irq_set_wake;

 if (PCS_QUIRK_HAS_SHARED_IRQ) {
  int res;

  res = request_irq(pcs_soc->irq, pcs_irq_handler,
      IRQF_SHARED | IRQF_NO_SUSPEND |
      IRQF_NO_THREAD,
      name, pcs_soc);
  if (res) {
   pcs_soc->irq = -1;
   return res;
  }
 } else {
  irq_set_chained_handler_and_data(pcs_soc->irq,
       pcs_irq_chain_handler,
       pcs_soc);
 }







 num_irqs = pcs->size;

 pcs->domain = irq_domain_add_simple(np, num_irqs, 0,
         &pcs_irqdomain_ops,
         pcs_soc);
 if (!pcs->domain) {
  irq_set_chained_handler(pcs_soc->irq, ((void*)0));
  return -EINVAL;
 }

 return 0;
}
