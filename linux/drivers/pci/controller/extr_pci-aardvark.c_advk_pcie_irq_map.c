
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct advk_pcie* host_data; } ;
struct advk_pcie {int irq_chip; } ;
typedef int irq_hw_number_t ;


 int IRQ_LEVEL ;
 int advk_pcie_irq_mask (int ) ;
 int handle_level_irq ;
 int irq_get_irq_data (unsigned int) ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct advk_pcie*) ;
 int irq_set_status_flags (unsigned int,int ) ;

__attribute__((used)) static int advk_pcie_irq_map(struct irq_domain *h,
        unsigned int virq, irq_hw_number_t hwirq)
{
 struct advk_pcie *pcie = h->host_data;

 advk_pcie_irq_mask(irq_get_irq_data(virq));
 irq_set_status_flags(virq, IRQ_LEVEL);
 irq_set_chip_and_handler(virq, &pcie->irq_chip,
     handle_level_irq);
 irq_set_chip_data(virq, pcie);

 return 0;
}
