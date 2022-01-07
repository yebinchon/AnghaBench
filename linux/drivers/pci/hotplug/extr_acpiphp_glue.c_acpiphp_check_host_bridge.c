
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpiphp_bridge {int dummy; } ;
struct acpi_device {scalar_t__ hp; } ;
struct TYPE_2__ {struct acpiphp_bridge* root_bridge; } ;


 int acpi_lock_hp_context () ;
 int acpi_unlock_hp_context () ;
 int acpiphp_check_bridge (struct acpiphp_bridge*) ;
 int get_bridge (struct acpiphp_bridge*) ;
 int pci_lock_rescan_remove () ;
 int pci_unlock_rescan_remove () ;
 int put_bridge (struct acpiphp_bridge*) ;
 TYPE_1__* to_acpiphp_root_context (scalar_t__) ;

void acpiphp_check_host_bridge(struct acpi_device *adev)
{
 struct acpiphp_bridge *bridge = ((void*)0);

 acpi_lock_hp_context();
 if (adev->hp) {
  bridge = to_acpiphp_root_context(adev->hp)->root_bridge;
  if (bridge)
   get_bridge(bridge);
 }
 acpi_unlock_hp_context();
 if (bridge) {
  pci_lock_rescan_remove();

  acpiphp_check_bridge(bridge);

  pci_unlock_rescan_remove();
  put_bridge(bridge);
 }
}
