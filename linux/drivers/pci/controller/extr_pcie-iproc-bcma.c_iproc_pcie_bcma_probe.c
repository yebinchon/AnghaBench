
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_host_bridge {int dummy; } ;
struct TYPE_2__ {char* name; int flags; scalar_t__ end; scalar_t__ start; } ;
struct iproc_pcie {int map_irq; TYPE_1__ mem; int base_addr; int base; int type; struct device* dev; } ;
struct device {int dummy; } ;
struct bcma_device {scalar_t__* addr_s; int addr; int io_addr; struct device dev; } ;


 int ENOMEM ;
 int IORESOURCE_MEM ;
 int IPROC_PCIE_PAXB_BCMA ;
 int LIST_HEAD (int ) ;
 scalar_t__ SZ_128M ;
 int bcma_set_drvdata (struct bcma_device*,struct iproc_pcie*) ;
 int dev_err (struct device*,char*) ;
 struct pci_host_bridge* devm_pci_alloc_host_bridge (struct device*,int) ;
 int iproc_pcie_bcma_map_irq ;
 int iproc_pcie_setup (struct iproc_pcie*,int *) ;
 int pci_add_resource (int *,TYPE_1__*) ;
 int pci_free_resource_list (int *) ;
 struct iproc_pcie* pci_host_bridge_priv (struct pci_host_bridge*) ;
 int resources ;

__attribute__((used)) static int iproc_pcie_bcma_probe(struct bcma_device *bdev)
{
 struct device *dev = &bdev->dev;
 struct iproc_pcie *pcie;
 LIST_HEAD(resources);
 struct pci_host_bridge *bridge;
 int ret;

 bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
 if (!bridge)
  return -ENOMEM;

 pcie = pci_host_bridge_priv(bridge);

 pcie->dev = dev;

 pcie->type = IPROC_PCIE_PAXB_BCMA;
 pcie->base = bdev->io_addr;
 if (!pcie->base) {
  dev_err(dev, "no controller registers\n");
  return -ENOMEM;
 }

 pcie->base_addr = bdev->addr;

 pcie->mem.start = bdev->addr_s[0];
 pcie->mem.end = bdev->addr_s[0] + SZ_128M - 1;
 pcie->mem.name = "PCIe MEM space";
 pcie->mem.flags = IORESOURCE_MEM;
 pci_add_resource(&resources, &pcie->mem);

 pcie->map_irq = iproc_pcie_bcma_map_irq;

 ret = iproc_pcie_setup(pcie, &resources);
 if (ret) {
  dev_err(dev, "PCIe controller setup failed\n");
  pci_free_resource_list(&resources);
  return ret;
 }

 bcma_set_drvdata(bdev, pcie);
 return 0;
}
