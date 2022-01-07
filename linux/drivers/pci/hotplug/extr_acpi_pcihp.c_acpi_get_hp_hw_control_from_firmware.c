
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {scalar_t__ native_shpc_hotplug; int dev; } ;
struct pci_dev {struct pci_bus* bus; int dev; } ;
struct pci_bus {struct pci_bus* parent; } ;
struct acpi_pci_root {scalar_t__ osc_support_set; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FULL_PATHNAME ;
 scalar_t__ ACPI_HANDLE (int *) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ENODEV ;
 int acpi_get_name (scalar_t__,int ,struct acpi_buffer*) ;
 int acpi_get_parent (scalar_t__,scalar_t__*) ;
 scalar_t__ acpi_is_root_bridge (scalar_t__) ;
 struct acpi_pci_root* acpi_pci_find_root (scalar_t__) ;
 scalar_t__ acpi_pci_get_bridge_handle (struct pci_bus*) ;
 int acpi_run_oshp (scalar_t__) ;
 int kfree (scalar_t__) ;
 struct pci_host_bridge* pci_find_host_bridge (struct pci_bus*) ;
 int pci_info (struct pci_dev*,char*,...) ;

int acpi_get_hp_hw_control_from_firmware(struct pci_dev *pdev)
{
 const struct pci_host_bridge *host;
 const struct acpi_pci_root *root;
 acpi_status status;
 acpi_handle chandle, handle;
 struct acpi_buffer string = { ACPI_ALLOCATE_BUFFER, ((void*)0) };






 host = pci_find_host_bridge(pdev->bus);
 root = acpi_pci_find_root(ACPI_HANDLE(&host->dev));
 if (!root)
  return 0;





 if (root->osc_support_set) {
  if (host->native_shpc_hotplug)
   return 0;
  return -ENODEV;
 }
 handle = ACPI_HANDLE(&pdev->dev);
 if (!handle) {




  struct pci_bus *pbus;
  for (pbus = pdev->bus; pbus; pbus = pbus->parent) {
   handle = acpi_pci_get_bridge_handle(pbus);
   if (handle)
    break;
  }
 }

 while (handle) {
  acpi_get_name(handle, ACPI_FULL_PATHNAME, &string);
  pci_info(pdev, "Requesting control of SHPC hotplug via OSHP (%s)\n",
    (char *)string.pointer);
  status = acpi_run_oshp(handle);
  if (ACPI_SUCCESS(status))
   goto got_one;
  if (acpi_is_root_bridge(handle))
   break;
  chandle = handle;
  status = acpi_get_parent(chandle, &handle);
  if (ACPI_FAILURE(status))
   break;
 }

 pci_info(pdev, "Cannot get control of SHPC hotplug\n");
 kfree(string.pointer);
 return -ENODEV;
got_one:
 pci_info(pdev, "Gained control of SHPC hotplug (%s)\n",
   (char *)string.pointer);
 kfree(string.pointer);
 return 0;
}
