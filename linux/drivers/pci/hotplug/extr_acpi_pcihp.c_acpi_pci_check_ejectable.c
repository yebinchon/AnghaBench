
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_get_parent (scalar_t__,scalar_t__*) ;
 scalar_t__ acpi_pci_get_bridge_handle (struct pci_bus*) ;
 int pcihp_is_ejectable (scalar_t__) ;

int acpi_pci_check_ejectable(struct pci_bus *pbus, acpi_handle handle)
{
 acpi_handle bridge_handle, parent_handle;

 bridge_handle = acpi_pci_get_bridge_handle(pbus);
 if (!bridge_handle)
  return 0;
 if ((ACPI_FAILURE(acpi_get_parent(handle, &parent_handle))))
  return 0;
 if (bridge_handle != parent_handle)
  return 0;
 return pcihp_is_ejectable(handle);
}
