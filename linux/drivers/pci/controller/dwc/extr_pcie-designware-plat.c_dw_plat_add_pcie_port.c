
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pcie_port {scalar_t__ irq; scalar_t__ msi_irq; int * ops; } ;
struct dw_plat_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {struct pcie_port pp; } ;


 int CONFIG_PCI_MSI ;
 scalar_t__ IS_ENABLED (int ) ;
 int dev_err (struct device*,char*) ;
 int dw_pcie_host_init (struct pcie_port*) ;
 int dw_plat_pcie_host_ops ;
 void* platform_get_irq (struct platform_device*,int) ;

__attribute__((used)) static int dw_plat_add_pcie_port(struct dw_plat_pcie *dw_plat_pcie,
     struct platform_device *pdev)
{
 struct dw_pcie *pci = dw_plat_pcie->pci;
 struct pcie_port *pp = &pci->pp;
 struct device *dev = &pdev->dev;
 int ret;

 pp->irq = platform_get_irq(pdev, 1);
 if (pp->irq < 0)
  return pp->irq;

 if (IS_ENABLED(CONFIG_PCI_MSI)) {
  pp->msi_irq = platform_get_irq(pdev, 0);
  if (pp->msi_irq < 0)
   return pp->msi_irq;
 }

 pp->ops = &dw_plat_pcie_host_ops;

 ret = dw_pcie_host_init(pp);
 if (ret) {
  dev_err(dev, "Failed to initialize host\n");
  return ret;
 }

 return 0;
}
