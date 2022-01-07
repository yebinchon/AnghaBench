
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_pcie {int irq; int irq_domain; } ;


 int irq_dispose_mapping (int ) ;
 int irq_domain_remove (int ) ;
 int irq_set_chained_handler_and_data (int ,int *,int *) ;

__attribute__((used)) static void altera_pcie_irq_teardown(struct altera_pcie *pcie)
{
 irq_set_chained_handler_and_data(pcie->irq, ((void*)0), ((void*)0));
 irq_domain_remove(pcie->irq_domain);
 irq_dispose_mapping(pcie->irq);
}
