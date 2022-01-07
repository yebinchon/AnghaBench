
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpiphp_root_context {int dummy; } ;
struct acpiphp_bridge {TYPE_1__* pci_bus; } ;
struct acpi_device {int * hp; } ;
struct TYPE_2__ {int bridge; } ;


 struct acpi_device* ACPI_COMPANION (int ) ;
 int acpi_lock_hp_context () ;
 int acpi_unlock_hp_context () ;
 int cleanup_bridge (struct acpiphp_bridge*) ;
 int kfree (struct acpiphp_root_context*) ;
 scalar_t__ pci_is_root_bus (TYPE_1__*) ;
 int put_bridge (struct acpiphp_bridge*) ;
 struct acpiphp_root_context* to_acpiphp_root_context (int *) ;

__attribute__((used)) static void acpiphp_drop_bridge(struct acpiphp_bridge *bridge)
{
 if (pci_is_root_bus(bridge->pci_bus)) {
  struct acpiphp_root_context *root_context;
  struct acpi_device *adev;

  acpi_lock_hp_context();
  adev = ACPI_COMPANION(bridge->pci_bus->bridge);
  root_context = to_acpiphp_root_context(adev->hp);
  adev->hp = ((void*)0);
  acpi_unlock_hp_context();
  kfree(root_context);
 }
 cleanup_bridge(bridge);
 put_bridge(bridge);
}
