
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int handle_level_irq ;
 int intx_irq_chip ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;

__attribute__((used)) static int mobiveil_pcie_intx_map(struct irq_domain *domain, unsigned int irq,
      irq_hw_number_t hwirq)
{
 irq_set_chip_and_handler(irq, &intx_irq_chip, handle_level_irq);
 irq_set_chip_data(irq, domain->host_data);

 return 0;
}
