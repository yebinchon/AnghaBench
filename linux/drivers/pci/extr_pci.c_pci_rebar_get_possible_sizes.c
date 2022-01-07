
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCI_REBAR_CAP ;
 int PCI_REBAR_CAP_SIZES ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_rebar_find_pos (struct pci_dev*,int) ;

u32 pci_rebar_get_possible_sizes(struct pci_dev *pdev, int bar)
{
 int pos;
 u32 cap;

 pos = pci_rebar_find_pos(pdev, bar);
 if (pos < 0)
  return 0;

 pci_read_config_dword(pdev, pos + PCI_REBAR_CAP, &cap);
 return (cap & PCI_REBAR_CAP_SIZES) >> 4;
}
