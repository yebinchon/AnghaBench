
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int * data; } ;
struct pci_cap_saved_state {TYPE_1__ cap; } ;
struct dpc_dev {scalar_t__ cap_pos; } ;


 scalar_t__ PCI_EXP_DPC_CTL ;
 int PCI_EXT_CAP_ID_DPC ;
 struct pci_cap_saved_state* pci_find_saved_ext_cap (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 struct dpc_dev* to_dpc_dev (struct pci_dev*) ;

void pci_save_dpc_state(struct pci_dev *dev)
{
 struct dpc_dev *dpc;
 struct pci_cap_saved_state *save_state;
 u16 *cap;

 if (!pci_is_pcie(dev))
  return;

 dpc = to_dpc_dev(dev);
 if (!dpc)
  return;

 save_state = pci_find_saved_ext_cap(dev, PCI_EXT_CAP_ID_DPC);
 if (!save_state)
  return;

 cap = (u16 *)&save_state->cap.data[0];
 pci_read_config_word(dev, dpc->cap_pos + PCI_EXP_DPC_CTL, cap);
}
