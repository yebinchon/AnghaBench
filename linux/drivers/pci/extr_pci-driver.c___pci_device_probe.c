
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {scalar_t__ probe; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int driver; } ;


 int ENODEV ;
 int pci_call_probe (struct pci_driver*,struct pci_dev*,struct pci_device_id const*) ;
 struct pci_device_id* pci_match_device (struct pci_driver*,struct pci_dev*) ;

__attribute__((used)) static int __pci_device_probe(struct pci_driver *drv, struct pci_dev *pci_dev)
{
 const struct pci_device_id *id;
 int error = 0;

 if (!pci_dev->driver && drv->probe) {
  error = -ENODEV;

  id = pci_match_device(drv, pci_dev);
  if (id)
   error = pci_call_probe(drv, pci_dev, id);
 }
 return error;
}
