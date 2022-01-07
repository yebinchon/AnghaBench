
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int tegra_cpuidle_pcie_irqs_in_use () ;
 int tegra_msi_irq_chip ;

__attribute__((used)) static int tegra_msi_map(struct irq_domain *domain, unsigned int irq,
    irq_hw_number_t hwirq)
{
 irq_set_chip_and_handler(irq, &tegra_msi_irq_chip, handle_simple_irq);
 irq_set_chip_data(irq, domain->host_data);

 tegra_cpuidle_pcie_irqs_in_use();

 return 0;
}
