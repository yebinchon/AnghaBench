
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int * data; } ;
struct pci_cap_saved_state {TYPE_1__ cap; } ;


 int PCI_CAP_ID_EXP ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL2 ;
 int PCI_EXP_RTCTL ;
 int PCI_EXP_SLTCTL ;
 int PCI_EXP_SLTCTL2 ;
 struct pci_cap_saved_state* pci_find_saved_cap (struct pci_dev*,int ) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void pci_restore_pcie_state(struct pci_dev *dev)
{
 int i = 0;
 struct pci_cap_saved_state *save_state;
 u16 *cap;

 save_state = pci_find_saved_cap(dev, PCI_CAP_ID_EXP);
 if (!save_state)
  return;

 cap = (u16 *)&save_state->cap.data[0];
 pcie_capability_write_word(dev, PCI_EXP_DEVCTL, cap[i++]);
 pcie_capability_write_word(dev, PCI_EXP_LNKCTL, cap[i++]);
 pcie_capability_write_word(dev, PCI_EXP_SLTCTL, cap[i++]);
 pcie_capability_write_word(dev, PCI_EXP_RTCTL, cap[i++]);
 pcie_capability_write_word(dev, PCI_EXP_DEVCTL2, cap[i++]);
 pcie_capability_write_word(dev, PCI_EXP_LNKCTL2, cap[i++]);
 pcie_capability_write_word(dev, PCI_EXP_SLTCTL2, cap[i++]);
}
