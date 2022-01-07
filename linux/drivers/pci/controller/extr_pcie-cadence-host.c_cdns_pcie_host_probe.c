
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct pci_host_bridge {int swizzle_irq; int map_irq; int * ops; int busnr; TYPE_1__ dev; int windows; } ;
struct list_head {int dummy; } ;
struct device_node {int dummy; } ;
struct cdns_pcie {int is_rc; int phy_count; int * link; int bus; struct resource* mem_res; int reg_base; } ;
struct cdns_pcie_rc {int max_regions; int no_bar_nbits; int vendor_id; int device_id; struct resource* cfg_res; int cfg_base; struct cdns_pcie pcie; struct device* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cdns_pcie_disable_phy (struct cdns_pcie*) ;
 int cdns_pcie_host_init (struct device*,struct list_head*,struct cdns_pcie_rc*) ;
 int cdns_pcie_host_ops ;
 int cdns_pcie_init_phy (struct device*,struct cdns_pcie*) ;
 int dev_err (struct device*,char*) ;
 int device_link_del (int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct pci_host_bridge* devm_pci_alloc_host_bridge (struct device*,int) ;
 int devm_pci_remap_cfg_resource (struct device*,struct resource*) ;
 int list_splice_init (struct list_head*,int *) ;
 int of_irq_parse_and_map_pci ;
 int of_property_read_u16 (struct device_node*,char*,int*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int pci_common_swizzle ;
 int pci_free_resource_list (struct list_head*) ;
 struct cdns_pcie_rc* pci_host_bridge_priv (struct pci_host_bridge*) ;
 int pci_host_probe (struct pci_host_bridge*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct cdns_pcie*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

__attribute__((used)) static int cdns_pcie_host_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct pci_host_bridge *bridge;
 struct list_head resources;
 struct cdns_pcie_rc *rc;
 struct cdns_pcie *pcie;
 struct resource *res;
 int ret;
 int phy_count;

 bridge = devm_pci_alloc_host_bridge(dev, sizeof(*rc));
 if (!bridge)
  return -ENOMEM;

 rc = pci_host_bridge_priv(bridge);
 rc->dev = dev;

 pcie = &rc->pcie;
 pcie->is_rc = 1;

 rc->max_regions = 32;
 of_property_read_u32(np, "cdns,max-outbound-regions", &rc->max_regions);

 rc->no_bar_nbits = 32;
 of_property_read_u32(np, "cdns,no-bar-match-nbits", &rc->no_bar_nbits);

 rc->vendor_id = 0xffff;
 of_property_read_u16(np, "vendor-id", &rc->vendor_id);

 rc->device_id = 0xffff;
 of_property_read_u16(np, "device-id", &rc->device_id);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "reg");
 pcie->reg_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(pcie->reg_base)) {
  dev_err(dev, "missing \"reg\"\n");
  return PTR_ERR(pcie->reg_base);
 }

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "cfg");
 rc->cfg_base = devm_pci_remap_cfg_resource(dev, res);
 if (IS_ERR(rc->cfg_base)) {
  dev_err(dev, "missing \"cfg\"\n");
  return PTR_ERR(rc->cfg_base);
 }
 rc->cfg_res = res;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mem");
 if (!res) {
  dev_err(dev, "missing \"mem\"\n");
  return -EINVAL;
 }
 pcie->mem_res = res;

 ret = cdns_pcie_init_phy(dev, pcie);
 if (ret) {
  dev_err(dev, "failed to init phy\n");
  return ret;
 }
 platform_set_drvdata(pdev, pcie);

 pm_runtime_enable(dev);
 ret = pm_runtime_get_sync(dev);
 if (ret < 0) {
  dev_err(dev, "pm_runtime_get_sync() failed\n");
  goto err_get_sync;
 }

 ret = cdns_pcie_host_init(dev, &resources, rc);
 if (ret)
  goto err_init;

 list_splice_init(&resources, &bridge->windows);
 bridge->dev.parent = dev;
 bridge->busnr = pcie->bus;
 bridge->ops = &cdns_pcie_host_ops;
 bridge->map_irq = of_irq_parse_and_map_pci;
 bridge->swizzle_irq = pci_common_swizzle;

 ret = pci_host_probe(bridge);
 if (ret < 0)
  goto err_host_probe;

 return 0;

 err_host_probe:
 pci_free_resource_list(&resources);

 err_init:
 pm_runtime_put_sync(dev);

 err_get_sync:
 pm_runtime_disable(dev);
 cdns_pcie_disable_phy(pcie);
 phy_count = pcie->phy_count;
 while (phy_count--)
  device_link_del(pcie->link[phy_count]);

 return ret;
}
