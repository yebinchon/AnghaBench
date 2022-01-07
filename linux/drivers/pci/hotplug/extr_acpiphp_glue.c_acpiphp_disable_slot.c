
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpiphp_slot {int dummy; } ;


 int acpi_scan_lock_acquire () ;
 int acpi_scan_lock_release () ;
 int acpiphp_disable_and_eject_slot (struct acpiphp_slot*) ;
 int pci_lock_rescan_remove () ;
 int pci_unlock_rescan_remove () ;

int acpiphp_disable_slot(struct acpiphp_slot *slot)
{
 int ret;





 acpi_scan_lock_acquire();
 pci_lock_rescan_remove();
 ret = acpiphp_disable_and_eject_slot(slot);
 pci_unlock_rescan_remove();
 acpi_scan_lock_release();
 return ret;
}
