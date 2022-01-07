
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int __pcie_print_link_status (struct pci_dev*,int) ;

void pcie_print_link_status(struct pci_dev *dev)
{
 __pcie_print_link_status(dev, 1);
}
