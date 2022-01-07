
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slot {TYPE_1__* zdev; } ;
struct hotplug_slot {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int bus; } ;


 int EIO ;
 int ZPCI_DEVFN ;
 scalar_t__ ZPCI_FN_STATE_STANDBY ;
 int pci_bus_add_devices (int ) ;
 int pci_lock_rescan_remove () ;
 int pci_scan_slot (int ,int ) ;
 int pci_unlock_rescan_remove () ;
 int slot_configure (struct slot*) ;
 int slot_deconfigure (struct slot*) ;
 struct slot* to_slot (struct hotplug_slot*) ;
 int zpci_enable_device (TYPE_1__*) ;

__attribute__((used)) static int enable_slot(struct hotplug_slot *hotplug_slot)
{
 struct slot *slot = to_slot(hotplug_slot);
 int rc;

 if (slot->zdev->state != ZPCI_FN_STATE_STANDBY)
  return -EIO;

 rc = slot_configure(slot);
 if (rc)
  return rc;

 rc = zpci_enable_device(slot->zdev);
 if (rc)
  goto out_deconfigure;

 pci_scan_slot(slot->zdev->bus, ZPCI_DEVFN);
 pci_lock_rescan_remove();
 pci_bus_add_devices(slot->zdev->bus);
 pci_unlock_rescan_remove();

 return rc;

out_deconfigure:
 slot_deconfigure(slot);
 return rc;
}
