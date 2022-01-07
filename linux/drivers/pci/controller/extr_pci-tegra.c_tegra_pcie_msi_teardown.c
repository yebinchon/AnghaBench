
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_msi {scalar_t__ irq; int domain; int phys; int virt; } ;
struct tegra_pcie {int dev; struct tegra_msi msi; } ;


 int DMA_ATTR_NO_KERNEL_MAPPING ;
 unsigned int INT_PCI_MSI_NR ;
 int PAGE_SIZE ;
 int dma_free_attrs (int ,int ,int ,int ,int ) ;
 int free_irq (scalar_t__,struct tegra_pcie*) ;
 int irq_dispose_mapping (unsigned int) ;
 int irq_domain_remove (int ) ;
 unsigned int irq_find_mapping (int ,unsigned int) ;

__attribute__((used)) static void tegra_pcie_msi_teardown(struct tegra_pcie *pcie)
{
 struct tegra_msi *msi = &pcie->msi;
 unsigned int i, irq;

 dma_free_attrs(pcie->dev, PAGE_SIZE, msi->virt, msi->phys,
         DMA_ATTR_NO_KERNEL_MAPPING);

 if (msi->irq > 0)
  free_irq(msi->irq, pcie);

 for (i = 0; i < INT_PCI_MSI_NR; i++) {
  irq = irq_find_mapping(msi->domain, i);
  if (irq > 0)
   irq_dispose_mapping(irq);
 }

 irq_domain_remove(msi->domain);
}
