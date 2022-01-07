
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev; int is_hotplug_bridge; } ;
struct fwnode_handle {int dummy; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 struct fwnode_handle* acpi_fwnode_handle (struct acpi_device*) ;
 struct acpi_device* acpi_pci_find_companion (int *) ;
 scalar_t__ fwnode_property_read_u8 (struct fwnode_handle const*,char*,int*) ;
 int pci_dev_is_added (struct pci_dev*) ;
 struct pci_dev* pci_find_pcie_root_port (struct pci_dev*) ;

__attribute__((used)) static bool acpi_pci_bridge_d3(struct pci_dev *dev)
{
 const struct fwnode_handle *fwnode;
 struct acpi_device *adev;
 struct pci_dev *root;
 u8 val;

 if (!dev->is_hotplug_bridge)
  return 0;





 root = pci_find_pcie_root_port(dev);
 if (!root)
  return 0;

 adev = ACPI_COMPANION(&root->dev);
 if (root == dev) {




  if (!adev && !pci_dev_is_added(root))
   adev = acpi_pci_find_companion(&root->dev);
 }

 if (!adev)
  return 0;

 fwnode = acpi_fwnode_handle(adev);
 if (fwnode_property_read_u8(fwnode, "HotPlugSupportInD3", &val))
  return 0;

 return val == 1;
}
