
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int pcie_cap; int pcie_flags_reg; int pcie_mpss; int saved_cap_space; int cfg_size; } ;
struct TYPE_2__ {int cap_nr; int size; int * data; scalar_t__ cap_extended; } ;
struct pci_cap_saved_state {int next; TYPE_1__ cap; } ;


 int GFP_KERNEL ;
 scalar_t__ PCIBIOS_SUCCESSFUL ;
 int PCI_CAP_ID_EXP ;
 int PCI_CAP_ID_MSI ;
 int PCI_CFG_SPACE_EXP_SIZE ;
 int PCI_CFG_SPACE_SIZE ;
 int PCI_EXP_DEVCAP ;
 int PCI_EXP_DEVCAP_PAYLOAD ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_FLAGS ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL2 ;
 int PCI_EXP_RTCTL ;
 int PCI_EXP_SAVE_REGS ;
 int PCI_EXP_SLTCTL ;
 int PCI_EXP_SLTCTL2 ;
 int hlist_add_head (int *,int *) ;
 struct pci_cap_saved_state* kzalloc (int,int ) ;
 int pci_find_capability (struct pci_dev*,int) ;
 scalar_t__ pci_find_saved_cap (struct pci_dev*,int) ;
 int pci_read_config_byte (struct pci_dev*,int,scalar_t__*) ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

__attribute__((used)) static void quirk_intel_qat_vf_cap(struct pci_dev *pdev)
{
 int pos, i = 0;
 u8 next_cap;
 u16 reg16, *cap;
 struct pci_cap_saved_state *state;


 if (pdev->pcie_cap || pci_find_capability(pdev, PCI_CAP_ID_EXP))
  return;


 pos = pci_find_capability(pdev, PCI_CAP_ID_MSI);
 if (!pos)
  return;





 pci_read_config_byte(pdev, pos + 1, &next_cap);
 if (next_cap)
  return;
 pos = 0x50;
 pci_read_config_word(pdev, pos, &reg16);
 if (reg16 == (0x0000 | PCI_CAP_ID_EXP)) {
  u32 status;



  int size = 7 * sizeof(u16);

  pdev->pcie_cap = pos;
  pci_read_config_word(pdev, pos + PCI_EXP_FLAGS, &reg16);
  pdev->pcie_flags_reg = reg16;
  pci_read_config_word(pdev, pos + PCI_EXP_DEVCAP, &reg16);
  pdev->pcie_mpss = reg16 & PCI_EXP_DEVCAP_PAYLOAD;

  pdev->cfg_size = PCI_CFG_SPACE_EXP_SIZE;
  if (pci_read_config_dword(pdev, PCI_CFG_SPACE_SIZE, &status) !=
      PCIBIOS_SUCCESSFUL || (status == 0xffffffff))
   pdev->cfg_size = PCI_CFG_SPACE_SIZE;

  if (pci_find_saved_cap(pdev, PCI_CAP_ID_EXP))
   return;


  state = kzalloc(sizeof(*state) + size, GFP_KERNEL);
  if (!state)
   return;

  state->cap.cap_nr = PCI_CAP_ID_EXP;
  state->cap.cap_extended = 0;
  state->cap.size = size;
  cap = (u16 *)&state->cap.data[0];
  pcie_capability_read_word(pdev, PCI_EXP_DEVCTL, &cap[i++]);
  pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &cap[i++]);
  pcie_capability_read_word(pdev, PCI_EXP_SLTCTL, &cap[i++]);
  pcie_capability_read_word(pdev, PCI_EXP_RTCTL, &cap[i++]);
  pcie_capability_read_word(pdev, PCI_EXP_DEVCTL2, &cap[i++]);
  pcie_capability_read_word(pdev, PCI_EXP_LNKCTL2, &cap[i++]);
  pcie_capability_read_word(pdev, PCI_EXP_SLTCTL2, &cap[i++]);
  hlist_add_head(&state->next, &pdev->saved_cap_space);
 }
}
