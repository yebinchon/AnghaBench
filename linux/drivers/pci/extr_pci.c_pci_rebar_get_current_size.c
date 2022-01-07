
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCI_REBAR_CTRL ;
 int PCI_REBAR_CTRL_BAR_SHIFT ;
 int PCI_REBAR_CTRL_BAR_SIZE ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_rebar_find_pos (struct pci_dev*,int) ;

int pci_rebar_get_current_size(struct pci_dev *pdev, int bar)
{
 int pos;
 u32 ctrl;

 pos = pci_rebar_find_pos(pdev, bar);
 if (pos < 0)
  return pos;

 pci_read_config_dword(pdev, pos + PCI_REBAR_CTRL, &ctrl);
 return (ctrl & PCI_REBAR_CTRL_BAR_SIZE) >> PCI_REBAR_CTRL_BAR_SHIFT;
}
