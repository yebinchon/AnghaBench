
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct pnv_php_slot {scalar_t__ attention_state; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct hotplug_slot {int dummy; } ;


 int PCI_EXP_SLTCTL ;
 int PCI_EXP_SLTCTL_AIC ;
 int PCI_EXP_SLTCTL_ATTN_IND_OFF ;
 int PCI_EXP_SLTCTL_ATTN_IND_ON ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int ,int ) ;
 struct pnv_php_slot* to_pnv_php_slot (struct hotplug_slot*) ;

__attribute__((used)) static int pnv_php_set_attention_state(struct hotplug_slot *slot, u8 state)
{
 struct pnv_php_slot *php_slot = to_pnv_php_slot(slot);
 struct pci_dev *bridge = php_slot->pdev;
 u16 new, mask;

 php_slot->attention_state = state;
 if (!bridge)
  return 0;

 mask = PCI_EXP_SLTCTL_AIC;

 if (state)
  new = PCI_EXP_SLTCTL_ATTN_IND_ON;
 else
  new = PCI_EXP_SLTCTL_ATTN_IND_OFF;

 pcie_capability_clear_and_set_word(bridge, PCI_EXP_SLTCTL, mask, new);

 return 0;
}
