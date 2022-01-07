
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_find_next_ext_capability (struct pci_dev*,int ,int) ;

int pci_find_ext_capability(struct pci_dev *dev, int cap)
{
 return pci_find_next_ext_capability(dev, 0, cap);
}
