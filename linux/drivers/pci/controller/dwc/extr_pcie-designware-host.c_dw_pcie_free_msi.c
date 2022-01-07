
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {scalar_t__ msi_page; int irq_domain; int msi_domain; scalar_t__ msi_irq; } ;


 int __free_page (scalar_t__) ;
 int irq_domain_remove (int ) ;
 int irq_set_chained_handler (scalar_t__,int *) ;
 int irq_set_handler_data (scalar_t__,int *) ;

void dw_pcie_free_msi(struct pcie_port *pp)
{
 if (pp->msi_irq) {
  irq_set_chained_handler(pp->msi_irq, ((void*)0));
  irq_set_handler_data(pp->msi_irq, ((void*)0));
 }

 irq_domain_remove(pp->msi_domain);
 irq_domain_remove(pp->irq_domain);

 if (pp->msi_page)
  __free_page(pp->msi_page);
}
