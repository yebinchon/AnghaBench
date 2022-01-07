
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dw_pcie_ep {int addr_size; int phys_base; int * ops; } ;
struct dw_pcie {int dbi_base2; struct dw_pcie_ep ep; } ;
struct artpec6_pcie {struct dw_pcie* pci; } ;


 int EINVAL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int dw_pcie_ep_init (struct dw_pcie_ep*) ;
 int pcie_ep_ops ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int artpec6_add_pcie_ep(struct artpec6_pcie *artpec6_pcie,
          struct platform_device *pdev)
{
 int ret;
 struct dw_pcie_ep *ep;
 struct resource *res;
 struct device *dev = &pdev->dev;
 struct dw_pcie *pci = artpec6_pcie->pci;

 ep = &pci->ep;
 ep->ops = &pcie_ep_ops;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi2");
 pci->dbi_base2 = devm_ioremap_resource(dev, res);
 if (IS_ERR(pci->dbi_base2))
  return PTR_ERR(pci->dbi_base2);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
 if (!res)
  return -EINVAL;

 ep->phys_base = res->start;
 ep->addr_size = resource_size(res);

 ret = dw_pcie_ep_init(ep);
 if (ret) {
  dev_err(dev, "failed to initialize endpoint\n");
  return ret;
 }

 return 0;
}
