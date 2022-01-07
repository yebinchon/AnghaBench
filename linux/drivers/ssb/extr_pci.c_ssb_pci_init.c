
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {scalar_t__ bustype; int sprom_mutex; struct pci_dev* host_pci; } ;
struct pci_dev {int dev; } ;


 scalar_t__ SSB_BUSTYPE_PCI ;
 int dev_attr_ssb_sprom ;
 int device_create_file (int *,int *) ;
 int mutex_init (int *) ;

int ssb_pci_init(struct ssb_bus *bus)
{
 struct pci_dev *pdev;
 int err;

 if (bus->bustype != SSB_BUSTYPE_PCI)
  return 0;

 pdev = bus->host_pci;
 mutex_init(&bus->sprom_mutex);
 err = device_create_file(&pdev->dev, &dev_attr_ssb_sprom);
 if (err)
  goto out;

out:
 return err;
}
