
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int ENOENT ;
 int ENOTSUPP ;
 int PCI_EXT_CAP_ID_REBAR ;
 scalar_t__ PCI_REBAR_CTRL ;
 int PCI_REBAR_CTRL_BAR_IDX ;
 int PCI_REBAR_CTRL_NBAR_MASK ;
 int PCI_REBAR_CTRL_NBAR_SHIFT ;
 unsigned int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static int pci_rebar_find_pos(struct pci_dev *pdev, int bar)
{
 unsigned int pos, nbars, i;
 u32 ctrl;

 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_REBAR);
 if (!pos)
  return -ENOTSUPP;

 pci_read_config_dword(pdev, pos + PCI_REBAR_CTRL, &ctrl);
 nbars = (ctrl & PCI_REBAR_CTRL_NBAR_MASK) >>
      PCI_REBAR_CTRL_NBAR_SHIFT;

 for (i = 0; i < nbars; i++, pos += 8) {
  int bar_idx;

  pci_read_config_dword(pdev, pos + PCI_REBAR_CTRL, &ctrl);
  bar_idx = ctrl & PCI_REBAR_CTRL_BAR_IDX;
  if (bar_idx == bar)
   return pos;
 }

 return -ENOENT;
}
