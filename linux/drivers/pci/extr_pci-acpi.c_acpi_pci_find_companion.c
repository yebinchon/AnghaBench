
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int devfn; } ;
struct device {int parent; } ;
struct acpi_device {int dummy; } ;


 int ACPI_COMPANION (int ) ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 struct acpi_device* acpi_find_child_device (int ,int,int) ;
 int pci_is_bridge (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static struct acpi_device *acpi_pci_find_companion(struct device *dev)
{
 struct pci_dev *pci_dev = to_pci_dev(dev);
 bool check_children;
 u64 addr;

 check_children = pci_is_bridge(pci_dev);

 addr = (PCI_SLOT(pci_dev->devfn) << 16) | PCI_FUNC(pci_dev->devfn);
 return acpi_find_child_device(ACPI_COMPANION(dev->parent), addr,
          check_children);
}
