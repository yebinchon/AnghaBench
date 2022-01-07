
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcifront_device {TYPE_1__* xdev; } ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,unsigned int,unsigned int) ;
 int pci_bus_add_devices (struct pci_bus*) ;
 struct pci_bus* pci_find_bus (unsigned int,unsigned int) ;
 int pci_walk_bus (struct pci_bus*,int ,struct pcifront_device*) ;
 int pcifront_claim_resource ;
 int pcifront_scan_bus (struct pcifront_device*,unsigned int,unsigned int,struct pci_bus*) ;
 int pcifront_scan_root (struct pcifront_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int pcifront_rescan_root(struct pcifront_device *pdev,
       unsigned int domain, unsigned int bus)
{
 int err;
 struct pci_bus *b;


 if (domain != 0) {
  dev_err(&pdev->xdev->dev,
   "PCI Root in non-zero PCI Domain! domain=%d\n", domain);
  dev_err(&pdev->xdev->dev,
   "Please compile with CONFIG_PCI_DOMAINS\n");
  return -EINVAL;
 }


 dev_info(&pdev->xdev->dev, "Rescanning PCI Frontend Bus %04x:%02x\n",
   domain, bus);

 b = pci_find_bus(domain, bus);
 if (!b)

  return pcifront_scan_root(pdev, domain, bus);

 err = pcifront_scan_bus(pdev, domain, bus, b);


 pci_walk_bus(b, pcifront_claim_resource, pdev);


 pci_bus_add_devices(b);

 return err;
}
