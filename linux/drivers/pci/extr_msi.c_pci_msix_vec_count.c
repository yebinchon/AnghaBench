
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ msix_cap; } ;


 int EINVAL ;
 scalar_t__ PCI_MSIX_FLAGS ;
 int msix_table_size (int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;

int pci_msix_vec_count(struct pci_dev *dev)
{
 u16 control;

 if (!dev->msix_cap)
  return -EINVAL;

 pci_read_config_word(dev, dev->msix_cap + PCI_MSIX_FLAGS, &control);
 return msix_table_size(control);
}
