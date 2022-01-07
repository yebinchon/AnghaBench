
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct pci_host_bridge {int dummy; } ;
struct mt7621_pcie {int ports; struct device* dev; } ;
struct TYPE_4__ {unsigned long end; scalar_t__ start; } ;
struct TYPE_3__ {unsigned long end; scalar_t__ start; } ;


 int ENODEV ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int LIST_HEAD (int ) ;
 int dev_err (struct device*,char*) ;
 struct pci_host_bridge* devm_pci_alloc_host_bridge (struct device*,int) ;
 TYPE_2__ iomem_resource ;
 TYPE_1__ ioport_resource ;
 int mt7621_pci_parse_request_of_pci_ranges (struct mt7621_pcie*) ;
 int mt7621_pcie_enable_ports (struct mt7621_pcie*) ;
 int mt7621_pcie_init_ports (struct mt7621_pcie*) ;
 int mt7621_pcie_init_virtual_bridges (struct mt7621_pcie*) ;
 int mt7621_pcie_parse_dt (struct mt7621_pcie*) ;
 int mt7621_pcie_register_host (struct pci_host_bridge*,int *) ;
 int mt7621_pcie_request_resources (struct mt7621_pcie*,int *) ;
 struct mt7621_pcie* pci_host_bridge_priv (struct pci_host_bridge*) ;
 int platform_set_drvdata (struct platform_device*,struct mt7621_pcie*) ;
 int res ;
 int setup_cm_memory_region (struct mt7621_pcie*) ;

__attribute__((used)) static int mt7621_pci_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mt7621_pcie *pcie;
 struct pci_host_bridge *bridge;
 int err;
 LIST_HEAD(res);

 if (!dev->of_node)
  return -ENODEV;

 bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
 if (!bridge)
  return -ENOMEM;

 pcie = pci_host_bridge_priv(bridge);
 pcie->dev = dev;
 platform_set_drvdata(pdev, pcie);
 INIT_LIST_HEAD(&pcie->ports);

 err = mt7621_pcie_parse_dt(pcie);
 if (err) {
  dev_err(dev, "Parsing DT failed\n");
  return err;
 }


 iomem_resource.start = 0;
 iomem_resource.end = ~0UL;
 ioport_resource.start = 0;
 ioport_resource.end = ~0UL;

 mt7621_pcie_init_ports(pcie);

 err = mt7621_pcie_init_virtual_bridges(pcie);
 if (err) {
  dev_err(dev, "Nothing is connected in virtual bridges. Exiting...");
  return 0;
 }

 mt7621_pcie_enable_ports(pcie);

 err = mt7621_pci_parse_request_of_pci_ranges(pcie);
 if (err) {
  dev_err(dev, "Error requesting pci resources from ranges");
  return err;
 }

 setup_cm_memory_region(pcie);

 err = mt7621_pcie_request_resources(pcie, &res);
 if (err) {
  dev_err(dev, "Error requesting resources\n");
  return err;
 }

 err = mt7621_pcie_register_host(bridge, &res);
 if (err) {
  dev_err(dev, "Error registering host\n");
  return err;
 }

 return 0;
}
