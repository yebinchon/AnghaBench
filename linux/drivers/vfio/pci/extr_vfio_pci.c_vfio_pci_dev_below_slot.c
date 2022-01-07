
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_slot {TYPE_1__* bus; } ;
struct pci_dev {struct pci_slot* slot; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;



__attribute__((used)) static bool vfio_pci_dev_below_slot(struct pci_dev *pdev, struct pci_slot *slot)
{
 for (; pdev; pdev = pdev->bus->self)
  if (pdev->bus == slot->bus)
   return (pdev->slot == slot);
 return 0;
}
