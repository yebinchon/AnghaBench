
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pci_cap_saved_state {int dummy; } ;


 struct pci_cap_saved_state* _pci_find_saved_cap (struct pci_dev*,char,int) ;

struct pci_cap_saved_state *pci_find_saved_cap(struct pci_dev *dev, char cap)
{
 return _pci_find_saved_cap(dev, cap, 0);
}
