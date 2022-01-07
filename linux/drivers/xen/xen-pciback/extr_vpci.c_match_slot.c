
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ bus; int devfn; } ;


 scalar_t__ PCI_SLOT (int ) ;
 scalar_t__ pci_domain_nr (scalar_t__) ;

__attribute__((used)) static inline int match_slot(struct pci_dev *l, struct pci_dev *r)
{
 if (pci_domain_nr(l->bus) == pci_domain_nr(r->bus)
     && l->bus == r->bus && PCI_SLOT(l->devfn) == PCI_SLOT(r->devfn))
  return 1;

 return 0;
}
