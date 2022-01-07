
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct pci_host_bridge {int dummy; } ;
struct TYPE_2__ {int axi_offset; } ;
struct iproc_pcie {int type; int need_ob_cfg; int map_irq; int phy; scalar_t__ need_ib_cfg; TYPE_1__ ob; int base_addr; int base; struct device* dev; } ;
struct device_node {int dummy; } ;
typedef int resource_size_t ;
typedef enum iproc_pcie_type { ____Placeholder_iproc_pcie_type } iproc_pcie_type ;


 int ENOMEM ;


 scalar_t__ IS_ERR (int ) ;
 int LIST_HEAD (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_of_pci_get_host_bridge_resources (struct device*,int ,int,int *,int *) ;
 struct pci_host_bridge* devm_pci_alloc_host_bridge (struct device*,int) ;
 int devm_pci_remap_cfgspace (struct device*,int ,int ) ;
 int devm_phy_optional_get (struct device*,char*) ;
 int iproc_pcie_setup (struct iproc_pcie*,int *) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 int of_irq_parse_and_map_pci ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int pci_free_resource_list (int *) ;
 struct iproc_pcie* pci_host_bridge_priv (struct pci_host_bridge*) ;
 int platform_set_drvdata (struct platform_device*,struct iproc_pcie*) ;
 int resource_size (struct resource*) ;
 int resources ;

__attribute__((used)) static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct iproc_pcie *pcie;
 struct device_node *np = dev->of_node;
 struct resource reg;
 resource_size_t iobase = 0;
 LIST_HEAD(resources);
 struct pci_host_bridge *bridge;
 int ret;

 bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
 if (!bridge)
  return -ENOMEM;

 pcie = pci_host_bridge_priv(bridge);

 pcie->dev = dev;
 pcie->type = (enum iproc_pcie_type) of_device_get_match_data(dev);

 ret = of_address_to_resource(np, 0, &reg);
 if (ret < 0) {
  dev_err(dev, "unable to obtain controller resources\n");
  return ret;
 }

 pcie->base = devm_pci_remap_cfgspace(dev, reg.start,
          resource_size(&reg));
 if (!pcie->base) {
  dev_err(dev, "unable to map controller registers\n");
  return -ENOMEM;
 }
 pcie->base_addr = reg.start;

 if (of_property_read_bool(np, "brcm,pcie-ob")) {
  u32 val;

  ret = of_property_read_u32(np, "brcm,pcie-ob-axi-offset",
        &val);
  if (ret) {
   dev_err(dev,
    "missing brcm,pcie-ob-axi-offset property\n");
   return ret;
  }
  pcie->ob.axi_offset = val;
  pcie->need_ob_cfg = 1;
 }






 pcie->need_ib_cfg = of_property_read_bool(np, "dma-ranges");


 pcie->phy = devm_phy_optional_get(dev, "pcie-phy");
 if (IS_ERR(pcie->phy))
  return PTR_ERR(pcie->phy);

 ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &resources,
          &iobase);
 if (ret) {
  dev_err(dev, "unable to get PCI host bridge resources\n");
  return ret;
 }


 switch (pcie->type) {
 case 129:
 case 128:
  break;
 default:
  pcie->map_irq = of_irq_parse_and_map_pci;
 }

 ret = iproc_pcie_setup(pcie, &resources);
 if (ret) {
  dev_err(dev, "PCIe controller setup failed\n");
  pci_free_resource_list(&resources);
  return ret;
 }

 platform_set_drvdata(pdev, pcie);
 return 0;
}
