
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct physdev_pci_device {int devfn; int bus; scalar_t__ seg; } ;
struct physdev_manage_pci {int devfn; int bus; scalar_t__ seg; } ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int number; } ;


 int ENOSYS ;
 int HYPERVISOR_physdev_op (int ,struct physdev_pci_device*) ;
 int PHYSDEVOP_manage_pci_remove ;
 int PHYSDEVOP_pci_device_remove ;
 scalar_t__ pci_domain_nr (TYPE_1__*) ;
 scalar_t__ pci_seg_supported ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int xen_remove_device(struct device *dev)
{
 int r;
 struct pci_dev *pci_dev = to_pci_dev(dev);

 if (pci_seg_supported) {
  struct physdev_pci_device device = {
   .seg = pci_domain_nr(pci_dev->bus),
   .bus = pci_dev->bus->number,
   .devfn = pci_dev->devfn
  };

  r = HYPERVISOR_physdev_op(PHYSDEVOP_pci_device_remove,
       &device);
 } else if (pci_domain_nr(pci_dev->bus))
  r = -ENOSYS;
 else {
  struct physdev_manage_pci manage_pci = {
   .bus = pci_dev->bus->number,
   .devfn = pci_dev->devfn
  };

  r = HYPERVISOR_physdev_op(PHYSDEVOP_manage_pci_remove,
       &manage_pci);
 }

 return r;
}
