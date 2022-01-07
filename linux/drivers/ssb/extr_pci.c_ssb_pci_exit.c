
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {scalar_t__ bustype; struct pci_dev* host_pci; } ;
struct pci_dev {int dev; } ;


 scalar_t__ SSB_BUSTYPE_PCI ;
 int dev_attr_ssb_sprom ;
 int device_remove_file (int *,int *) ;

void ssb_pci_exit(struct ssb_bus *bus)
{
 struct pci_dev *pdev;

 if (bus->bustype != SSB_BUSTYPE_PCI)
  return;

 pdev = bus->host_pci;
 device_remove_file(&pdev->dev, &dev_attr_ssb_sprom);
}
