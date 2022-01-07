
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pcie_port {scalar_t__ msi_irq; int * ops; } ;
struct dw_pcie {struct device* dev; struct pcie_port pp; } ;
struct device {int dummy; } ;
struct artpec6_pcie {struct dw_pcie* pci; } ;


 int CONFIG_PCI_MSI ;
 scalar_t__ IS_ENABLED (int ) ;
 int artpec6_pcie_host_ops ;
 int dev_err (struct device*,char*) ;
 int dw_pcie_host_init (struct pcie_port*) ;
 scalar_t__ platform_get_irq_byname (struct platform_device*,char*) ;

__attribute__((used)) static int artpec6_add_pcie_port(struct artpec6_pcie *artpec6_pcie,
     struct platform_device *pdev)
{
 struct dw_pcie *pci = artpec6_pcie->pci;
 struct pcie_port *pp = &pci->pp;
 struct device *dev = pci->dev;
 int ret;

 if (IS_ENABLED(CONFIG_PCI_MSI)) {
  pp->msi_irq = platform_get_irq_byname(pdev, "msi");
  if (pp->msi_irq < 0) {
   dev_err(dev, "failed to get MSI irq\n");
   return pp->msi_irq;
  }
 }

 pp->ops = &artpec6_pcie_host_ops;

 ret = dw_pcie_host_init(pp);
 if (ret) {
  dev_err(dev, "failed to initialize host\n");
  return ret;
 }

 return 0;
}
