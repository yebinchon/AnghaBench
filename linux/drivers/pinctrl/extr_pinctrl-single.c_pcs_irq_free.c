
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcs_soc_data {scalar_t__ irq; } ;
struct pcs_device {scalar_t__ domain; struct pcs_soc_data socdata; } ;


 scalar_t__ PCS_QUIRK_HAS_SHARED_IRQ ;
 int free_irq (scalar_t__,struct pcs_soc_data*) ;
 int irq_domain_remove (scalar_t__) ;
 int irq_set_chained_handler (scalar_t__,int *) ;

__attribute__((used)) static void pcs_irq_free(struct pcs_device *pcs)
{
 struct pcs_soc_data *pcs_soc = &pcs->socdata;

 if (pcs_soc->irq < 0)
  return;

 if (pcs->domain)
  irq_domain_remove(pcs->domain);

 if (PCS_QUIRK_HAS_SHARED_IRQ)
  free_irq(pcs_soc->irq, pcs_soc);
 else
  irq_set_chained_handler(pcs_soc->irq, ((void*)0));
}
