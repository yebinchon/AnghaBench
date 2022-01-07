
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
struct pci_host_bridge {int ignore_reset_delay; } ;
struct pci_bus {int bridge; } ;


 int ACPI_FREE (union acpi_object*) ;
 int ACPI_HANDLE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int RESET_DELAY_DSM ;
 union acpi_object* acpi_evaluate_dsm (int ,int *,int,int ,int *) ;
 scalar_t__ acpi_pci_disabled ;
 int acpi_pci_slot_enumerate (struct pci_bus*) ;
 int acpiphp_enumerate_slots (struct pci_bus*) ;
 int pci_acpi_dsm_guid ;
 struct pci_host_bridge* pci_find_host_bridge (struct pci_bus*) ;
 int pci_is_root_bus (struct pci_bus*) ;

void acpi_pci_add_bus(struct pci_bus *bus)
{
 union acpi_object *obj;
 struct pci_host_bridge *bridge;

 if (acpi_pci_disabled || !bus->bridge || !ACPI_HANDLE(bus->bridge))
  return;

 acpi_pci_slot_enumerate(bus);
 acpiphp_enumerate_slots(bus);





 if (!pci_is_root_bus(bus))
  return;

 obj = acpi_evaluate_dsm(ACPI_HANDLE(bus->bridge), &pci_acpi_dsm_guid, 3,
    RESET_DELAY_DSM, ((void*)0));
 if (!obj)
  return;

 if (obj->type == ACPI_TYPE_INTEGER && obj->integer.value == 1) {
  bridge = pci_find_host_bridge(bus);
  bridge->ignore_reset_delay = 1;
 }
 ACPI_FREE(obj);
}
