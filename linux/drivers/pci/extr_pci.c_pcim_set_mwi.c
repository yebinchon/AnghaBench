
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devres {int mwi; } ;
struct pci_dev {int dummy; } ;


 int ENOMEM ;
 struct pci_devres* find_pci_dr (struct pci_dev*) ;
 int pci_set_mwi (struct pci_dev*) ;

int pcim_set_mwi(struct pci_dev *dev)
{
 struct pci_devres *dr;

 dr = find_pci_dr(dev);
 if (!dr)
  return -ENOMEM;

 dr->mwi = 1;
 return pci_set_mwi(dev);
}
