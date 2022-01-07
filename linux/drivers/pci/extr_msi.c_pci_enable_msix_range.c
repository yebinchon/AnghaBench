
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct msix_entry {int dummy; } ;


 int __pci_enable_msix_range (struct pci_dev*,struct msix_entry*,int,int,int *,int ) ;

int pci_enable_msix_range(struct pci_dev *dev, struct msix_entry *entries,
  int minvec, int maxvec)
{
 return __pci_enable_msix_range(dev, entries, minvec, maxvec, ((void*)0), 0);
}
