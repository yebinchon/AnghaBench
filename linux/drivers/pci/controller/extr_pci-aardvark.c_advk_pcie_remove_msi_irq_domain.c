
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advk_pcie {int msi_inner_domain; int msi_domain; } ;


 int irq_domain_remove (int ) ;

__attribute__((used)) static void advk_pcie_remove_msi_irq_domain(struct advk_pcie *pcie)
{
 irq_domain_remove(pcie->msi_domain);
 irq_domain_remove(pcie->msi_inner_domain);
}
