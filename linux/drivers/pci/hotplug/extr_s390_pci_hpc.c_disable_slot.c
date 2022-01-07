
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slot {TYPE_1__* zdev; } ;
struct pci_dev {int dummy; } ;
struct hotplug_slot {int dummy; } ;
struct TYPE_2__ {int bus; int state; } ;


 int EIO ;
 int ZPCI_DEVFN ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,int ) ;
 int pci_stop_and_remove_bus_device_locked (struct pci_dev*) ;
 int slot_deconfigure (struct slot*) ;
 struct slot* to_slot (struct hotplug_slot*) ;
 int zpci_disable_device (TYPE_1__*) ;
 int zpci_fn_configured (int ) ;

__attribute__((used)) static int disable_slot(struct hotplug_slot *hotplug_slot)
{
 struct slot *slot = to_slot(hotplug_slot);
 struct pci_dev *pdev;
 int rc;

 if (!zpci_fn_configured(slot->zdev->state))
  return -EIO;

 pdev = pci_get_slot(slot->zdev->bus, ZPCI_DEVFN);
 if (pdev) {
  pci_stop_and_remove_bus_device_locked(pdev);
  pci_dev_put(pdev);
 }

 rc = zpci_disable_device(slot->zdev);
 if (rc)
  return rc;

 return slot_deconfigure(slot);
}
