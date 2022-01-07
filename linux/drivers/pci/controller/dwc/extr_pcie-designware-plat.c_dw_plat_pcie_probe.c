
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct dw_plat_pcie_of_data {scalar_t__ mode; } ;
struct dw_plat_pcie {int mode; struct dw_pcie* pci; } ;
struct dw_pcie {int dbi_base; int * ops; struct device* dev; } ;
typedef enum dw_pcie_device_mode { ____Placeholder_dw_pcie_device_mode } dw_pcie_device_mode ;


 int CONFIG_PCIE_DW_PLAT_EP ;
 int CONFIG_PCIE_DW_PLAT_HOST ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int dw_pcie_ops ;
 int dw_plat_add_pcie_ep (struct dw_plat_pcie*,struct platform_device*) ;
 int dw_plat_add_pcie_port (struct dw_plat_pcie*,struct platform_device*) ;
 int dw_plat_pcie_of_match ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct dw_plat_pcie*) ;

__attribute__((used)) static int dw_plat_pcie_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct dw_plat_pcie *dw_plat_pcie;
 struct dw_pcie *pci;
 struct resource *res;
 int ret;
 const struct of_device_id *match;
 const struct dw_plat_pcie_of_data *data;
 enum dw_pcie_device_mode mode;

 match = of_match_device(dw_plat_pcie_of_match, dev);
 if (!match)
  return -EINVAL;

 data = (struct dw_plat_pcie_of_data *)match->data;
 mode = (enum dw_pcie_device_mode)data->mode;

 dw_plat_pcie = devm_kzalloc(dev, sizeof(*dw_plat_pcie), GFP_KERNEL);
 if (!dw_plat_pcie)
  return -ENOMEM;

 pci = devm_kzalloc(dev, sizeof(*pci), GFP_KERNEL);
 if (!pci)
  return -ENOMEM;

 pci->dev = dev;
 pci->ops = &dw_pcie_ops;

 dw_plat_pcie->pci = pci;
 dw_plat_pcie->mode = mode;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi");
 if (!res)
  res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 pci->dbi_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(pci->dbi_base))
  return PTR_ERR(pci->dbi_base);

 platform_set_drvdata(pdev, dw_plat_pcie);

 switch (dw_plat_pcie->mode) {
 case 128:
  if (!IS_ENABLED(CONFIG_PCIE_DW_PLAT_HOST))
   return -ENODEV;

  ret = dw_plat_add_pcie_port(dw_plat_pcie, pdev);
  if (ret < 0)
   return ret;
  break;
 case 129:
  if (!IS_ENABLED(CONFIG_PCIE_DW_PLAT_EP))
   return -ENODEV;

  ret = dw_plat_add_pcie_ep(dw_plat_pcie, pdev);
  if (ret < 0)
   return ret;
  break;
 default:
  dev_err(dev, "INVALID device type %d\n", dw_plat_pcie->mode);
 }

 return 0;
}
