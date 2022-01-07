
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct pci_cap_saved_state {int dummy; } ;


 struct pci_cap_saved_state* _pci_find_saved_cap (struct pci_dev*,int ,int) ;

struct pci_cap_saved_state *pci_find_saved_ext_cap(struct pci_dev *dev, u16 cap)
{
 return _pci_find_saved_cap(dev, cap, 1);
}
