
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ package; } ;
struct pci_host_bridge {scalar_t__ ignore_reset_delay; } ;
struct pci_dev {int d3cold_delay; int d3_delay; int bus; } ;
typedef int acpi_handle ;


 int ACPI_FREE (union acpi_object*) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int FUNCTION_DELAY_DSM ;
 int PCI_PM_D3COLD_WAIT ;
 int PCI_PM_D3_WAIT ;
 union acpi_object* acpi_evaluate_dsm (int ,int *,int,int ,int *) ;
 int pci_acpi_dsm_guid ;
 struct pci_host_bridge* pci_find_host_bridge (int ) ;

__attribute__((used)) static void pci_acpi_optimize_delay(struct pci_dev *pdev,
        acpi_handle handle)
{
 struct pci_host_bridge *bridge = pci_find_host_bridge(pdev->bus);
 int value;
 union acpi_object *obj, *elements;

 if (bridge->ignore_reset_delay)
  pdev->d3cold_delay = 0;

 obj = acpi_evaluate_dsm(handle, &pci_acpi_dsm_guid, 3,
    FUNCTION_DELAY_DSM, ((void*)0));
 if (!obj)
  return;

 if (obj->type == ACPI_TYPE_PACKAGE && obj->package.count == 5) {
  elements = obj->package.elements;
  if (elements[0].type == ACPI_TYPE_INTEGER) {
   value = (int)elements[0].integer.value / 1000;
   if (value < PCI_PM_D3COLD_WAIT)
    pdev->d3cold_delay = value;
  }
  if (elements[3].type == ACPI_TYPE_INTEGER) {
   value = (int)elements[3].integer.value / 1000;
   if (value < PCI_PM_D3_WAIT)
    pdev->d3_delay = value;
  }
 }
 ACPI_FREE(obj);
}
