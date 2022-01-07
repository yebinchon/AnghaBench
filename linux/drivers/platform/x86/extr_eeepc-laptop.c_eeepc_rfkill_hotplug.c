
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {struct pci_bus* subordinate; } ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int ops; } ;
struct eeepc_laptop {int hotplug_lock; TYPE_1__ hotplug_slot; scalar_t__ wlan_rfkill; } ;
typedef int acpi_handle ;


 int PCI_VENDOR_ID ;
 struct pci_dev* acpi_get_pci_dev (int ) ;
 int eeepc_wlan_rfkill_blocked (struct eeepc_laptop*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_add_device (struct pci_dev*) ;
 int pci_bus_assign_resources (struct pci_bus*) ;
 scalar_t__ pci_bus_read_config_dword (struct pci_bus*,int ,int ,int*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (struct pci_bus*,int ) ;
 int pci_lock_rescan_remove () ;
 struct pci_dev* pci_scan_single_device (struct pci_bus*,int ) ;
 int pci_stop_and_remove_bus_device (struct pci_dev*) ;
 int pci_unlock_rescan_remove () ;
 int pr_err (char*) ;
 int pr_warn (char*,...) ;
 int pr_warning (char*) ;
 int rfkill_set_sw_state (scalar_t__,int) ;

__attribute__((used)) static void eeepc_rfkill_hotplug(struct eeepc_laptop *eeepc, acpi_handle handle)
{
 struct pci_dev *port;
 struct pci_dev *dev;
 struct pci_bus *bus;
 bool blocked = eeepc_wlan_rfkill_blocked(eeepc);
 bool absent;
 u32 l;

 if (eeepc->wlan_rfkill)
  rfkill_set_sw_state(eeepc->wlan_rfkill, blocked);

 mutex_lock(&eeepc->hotplug_lock);
 pci_lock_rescan_remove();

 if (!eeepc->hotplug_slot.ops)
  goto out_unlock;

 port = acpi_get_pci_dev(handle);
 if (!port) {
  pr_warning("Unable to find port\n");
  goto out_unlock;
 }

 bus = port->subordinate;

 if (!bus) {
  pr_warn("Unable to find PCI bus 1?\n");
  goto out_put_dev;
 }

 if (pci_bus_read_config_dword(bus, 0, PCI_VENDOR_ID, &l)) {
  pr_err("Unable to read PCI config space?\n");
  goto out_put_dev;
 }

 absent = (l == 0xffffffff);

 if (blocked != absent) {
  pr_warn("BIOS says wireless lan is %s, but the pci device is %s\n",
   blocked ? "blocked" : "unblocked",
   absent ? "absent" : "present");
  pr_warn("skipped wireless hotplug as probably inappropriate for this model\n");
  goto out_put_dev;
 }

 if (!blocked) {
  dev = pci_get_slot(bus, 0);
  if (dev) {

   pci_dev_put(dev);
   goto out_put_dev;
  }
  dev = pci_scan_single_device(bus, 0);
  if (dev) {
   pci_bus_assign_resources(bus);
   pci_bus_add_device(dev);
  }
 } else {
  dev = pci_get_slot(bus, 0);
  if (dev) {
   pci_stop_and_remove_bus_device(dev);
   pci_dev_put(dev);
  }
 }
out_put_dev:
 pci_dev_put(port);

out_unlock:
 pci_unlock_rescan_remove();
 mutex_unlock(&eeepc->hotplug_lock);
}
