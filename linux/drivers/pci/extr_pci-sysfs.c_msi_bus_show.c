
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int no_msi; struct pci_bus* subordinate; } ;
struct pci_bus {int bus_flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PCI_BUS_FLAGS_NO_MSI ;
 int sprintf (char*,char*,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t msi_bus_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct pci_bus *subordinate = pdev->subordinate;

 return sprintf(buf, "%u\n", subordinate ?
         !(subordinate->bus_flags & PCI_BUS_FLAGS_NO_MSI)
      : !pdev->no_msi);
}
