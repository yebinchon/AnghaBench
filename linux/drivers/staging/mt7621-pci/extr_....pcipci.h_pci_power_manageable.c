
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ bridge_d3; } ;


 int pci_has_subordinate (struct pci_dev*) ;

__attribute__((used)) static inline bool pci_power_manageable(struct pci_dev *pci_dev)
{




 return !pci_has_subordinate(pci_dev) || pci_dev->bridge_d3;
}
