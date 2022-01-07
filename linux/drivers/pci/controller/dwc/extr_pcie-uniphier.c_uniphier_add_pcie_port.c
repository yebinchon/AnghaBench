
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {scalar_t__ msi_irq; int * ops; } ;
struct dw_pcie {struct pcie_port pp; } ;
struct uniphier_pcie_priv {struct dw_pcie pci; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int CONFIG_PCI_MSI ;
 scalar_t__ IS_ENABLED (int ) ;
 int dev_err (struct device*,char*,int) ;
 int dw_pcie_host_init (struct pcie_port*) ;
 scalar_t__ platform_get_irq_byname (struct platform_device*,char*) ;
 int uniphier_pcie_host_ops ;

__attribute__((used)) static int uniphier_add_pcie_port(struct uniphier_pcie_priv *priv,
      struct platform_device *pdev)
{
 struct dw_pcie *pci = &priv->pci;
 struct pcie_port *pp = &pci->pp;
 struct device *dev = &pdev->dev;
 int ret;

 pp->ops = &uniphier_pcie_host_ops;

 if (IS_ENABLED(CONFIG_PCI_MSI)) {
  pp->msi_irq = platform_get_irq_byname(pdev, "msi");
  if (pp->msi_irq < 0)
   return pp->msi_irq;
 }

 ret = dw_pcie_host_init(pp);
 if (ret) {
  dev_err(dev, "Failed to initialize host (%d)\n", ret);
  return ret;
 }

 return 0;
}
