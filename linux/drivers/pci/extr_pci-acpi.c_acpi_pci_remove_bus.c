
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int bridge; } ;


 scalar_t__ acpi_pci_disabled ;
 int acpi_pci_slot_remove (struct pci_bus*) ;
 int acpiphp_remove_slots (struct pci_bus*) ;

void acpi_pci_remove_bus(struct pci_bus *bus)
{
 if (acpi_pci_disabled || !bus->bridge)
  return;

 acpiphp_remove_slots(bus);
 acpi_pci_slot_remove(bus);
}
