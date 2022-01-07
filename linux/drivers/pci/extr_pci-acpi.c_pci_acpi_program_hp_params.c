
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {struct pci_bus* bus; } ;
struct pci_bus {struct pci_bus* parent; } ;
typedef int acpi_status ;
typedef int * acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ENODEV ;
 int acpi_get_parent (int *,int **) ;
 scalar_t__ acpi_is_root_bridge (int *) ;
 scalar_t__ acpi_pci_disabled ;
 int * acpi_pci_get_bridge_handle (struct pci_bus*) ;
 int acpi_run_hpp (struct pci_dev*,int *) ;
 int acpi_run_hpx (struct pci_dev*,int *) ;

int pci_acpi_program_hp_params(struct pci_dev *dev)
{
 acpi_status status;
 acpi_handle handle, phandle;
 struct pci_bus *pbus;

 if (acpi_pci_disabled)
  return -ENODEV;

 handle = ((void*)0);
 for (pbus = dev->bus; pbus; pbus = pbus->parent) {
  handle = acpi_pci_get_bridge_handle(pbus);
  if (handle)
   break;
 }







 while (handle) {
  status = acpi_run_hpx(dev, handle);
  if (ACPI_SUCCESS(status))
   return 0;
  status = acpi_run_hpp(dev, handle);
  if (ACPI_SUCCESS(status))
   return 0;
  if (acpi_is_root_bridge(handle))
   break;
  status = acpi_get_parent(handle, &phandle);
  if (ACPI_FAILURE(status))
   break;
  handle = phandle;
 }
 return -ENODEV;
}
