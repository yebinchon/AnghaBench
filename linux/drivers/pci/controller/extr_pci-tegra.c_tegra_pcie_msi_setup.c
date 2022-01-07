
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int teardown_irq; int setup_irq; struct device* dev; } ;
struct tegra_msi {int irq; int domain; TYPE_2__ chip; int virt; int phys; int lock; } ;
struct tegra_pcie {struct device* dev; struct tegra_msi msi; } ;
struct platform_device {int dummy; } ;
struct pci_host_bridge {TYPE_2__* msi; } ;
struct device {int of_node; } ;
struct TYPE_3__ {int name; } ;


 int DMA_ATTR_NO_KERNEL_MAPPING ;
 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_PCI_MSI_NR ;
 int IRQF_NO_THREAD ;
 int PAGE_SIZE ;
 int dev_err (struct device*,char*,...) ;
 int dma_alloc_attrs (struct device*,int ,int *,int ,int ) ;
 int dma_set_coherent_mask (struct device*,int ) ;
 int free_irq (int,struct tegra_pcie*) ;
 int irq_domain_add_linear (int ,int ,int *,TYPE_2__*) ;
 int irq_domain_remove (int ) ;
 int msi_domain_ops ;
 int mutex_init (int *) ;
 struct pci_host_bridge* pci_host_bridge_from_priv (struct tegra_pcie*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int request_irq (int,int ,int ,int ,struct tegra_pcie*) ;
 TYPE_1__ tegra_msi_irq_chip ;
 int tegra_msi_setup_irq ;
 int tegra_msi_teardown_irq ;
 int tegra_pcie_msi_irq ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int tegra_pcie_msi_setup(struct tegra_pcie *pcie)
{
 struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
 struct platform_device *pdev = to_platform_device(pcie->dev);
 struct tegra_msi *msi = &pcie->msi;
 struct device *dev = pcie->dev;
 int err;

 mutex_init(&msi->lock);

 msi->chip.dev = dev;
 msi->chip.setup_irq = tegra_msi_setup_irq;
 msi->chip.teardown_irq = tegra_msi_teardown_irq;

 msi->domain = irq_domain_add_linear(dev->of_node, INT_PCI_MSI_NR,
         &msi_domain_ops, &msi->chip);
 if (!msi->domain) {
  dev_err(dev, "failed to create IRQ domain\n");
  return -ENOMEM;
 }

 err = platform_get_irq_byname(pdev, "msi");
 if (err < 0) {
  dev_err(dev, "failed to get IRQ: %d\n", err);
  goto free_irq_domain;
 }

 msi->irq = err;

 err = request_irq(msi->irq, tegra_pcie_msi_irq, IRQF_NO_THREAD,
     tegra_msi_irq_chip.name, pcie);
 if (err < 0) {
  dev_err(dev, "failed to request IRQ: %d\n", err);
  goto free_irq_domain;
 }






 err = dma_set_coherent_mask(dev, DMA_BIT_MASK(32));
 if (err < 0) {
  dev_err(dev, "failed to set DMA coherent mask: %d\n", err);
  goto free_irq;
 }

 msi->virt = dma_alloc_attrs(dev, PAGE_SIZE, &msi->phys, GFP_KERNEL,
        DMA_ATTR_NO_KERNEL_MAPPING);
 if (!msi->virt) {
  dev_err(dev, "failed to allocate DMA memory for MSI\n");
  err = -ENOMEM;
  goto free_irq;
 }

 host->msi = &msi->chip;

 return 0;

free_irq:
 free_irq(msi->irq, pcie);
free_irq_domain:
 irq_domain_remove(msi->domain);
 return err;
}
