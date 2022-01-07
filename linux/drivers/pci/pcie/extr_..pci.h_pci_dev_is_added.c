
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int priv_flags; } ;


 int PCI_DEV_ADDED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool pci_dev_is_added(const struct pci_dev *dev)
{
 return test_bit(PCI_DEV_ADDED, &dev->priv_flags);
}
