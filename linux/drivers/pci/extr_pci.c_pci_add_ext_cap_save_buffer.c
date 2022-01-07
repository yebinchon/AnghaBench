
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int _pci_add_cap_save_buffer (struct pci_dev*,int ,int,unsigned int) ;

int pci_add_ext_cap_save_buffer(struct pci_dev *dev, u16 cap, unsigned int size)
{
 return _pci_add_cap_save_buffer(dev, cap, 1, size);
}
