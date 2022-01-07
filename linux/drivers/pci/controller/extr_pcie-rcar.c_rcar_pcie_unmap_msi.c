
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_msi {int domain; } ;
struct rcar_pcie {struct rcar_msi msi; } ;


 int INT_PCI_MSI_NR ;
 int irq_dispose_mapping (int) ;
 int irq_domain_remove (int ) ;
 int irq_find_mapping (int ,int) ;

__attribute__((used)) static void rcar_pcie_unmap_msi(struct rcar_pcie *pcie)
{
 struct rcar_msi *msi = &pcie->msi;
 int i, irq;

 for (i = 0; i < INT_PCI_MSI_NR; i++) {
  irq = irq_find_mapping(msi->domain, i);
  if (irq > 0)
   irq_dispose_mapping(irq);
 }

 irq_domain_remove(msi->domain);
}
