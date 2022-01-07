
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcifront_device {TYPE_1__* xdev; } ;
struct pci_dev {int dummy; } ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int dev_info (int *,char*,unsigned int,unsigned int,int ,int ) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (struct pci_bus*,unsigned int) ;
 struct pci_dev* pci_scan_single_device (struct pci_bus*,unsigned int) ;

__attribute__((used)) static int pcifront_scan_bus(struct pcifront_device *pdev,
    unsigned int domain, unsigned int bus,
    struct pci_bus *b)
{
 struct pci_dev *d;
 unsigned int devfn;





 for (devfn = 0; devfn < 0x100; devfn++) {
  d = pci_get_slot(b, devfn);
  if (d) {

   pci_dev_put(d);
   continue;
  }

  d = pci_scan_single_device(b, devfn);
  if (d)
   dev_info(&pdev->xdev->dev, "New device on "
     "%04x:%02x:%02x.%d found.\n", domain, bus,
     PCI_SLOT(devfn), PCI_FUNC(devfn));
 }

 return 0;
}
