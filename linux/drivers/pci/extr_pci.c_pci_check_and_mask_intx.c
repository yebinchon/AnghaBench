
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_check_and_set_intx_mask (struct pci_dev*,int) ;

bool pci_check_and_mask_intx(struct pci_dev *dev)
{
 return pci_check_and_set_intx_mask(dev, 1);
}
