
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advk_pcie {int irq_domain; } ;


 int irq_domain_remove (int ) ;

__attribute__((used)) static void advk_pcie_remove_irq_domain(struct advk_pcie *pcie)
{
 irq_domain_remove(pcie->irq_domain);
}
