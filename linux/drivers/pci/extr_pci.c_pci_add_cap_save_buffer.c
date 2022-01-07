
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int _pci_add_cap_save_buffer (struct pci_dev*,char,int,unsigned int) ;

int pci_add_cap_save_buffer(struct pci_dev *dev, char cap, unsigned int size)
{
 return _pci_add_cap_save_buffer(dev, cap, 0, size);
}
