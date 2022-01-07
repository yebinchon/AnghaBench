
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int * data; } ;
struct pci_cap_saved_state {TYPE_1__ cap; } ;


 int PCI_CAP_ID_PCIX ;
 scalar_t__ PCI_X_CMD ;
 int pci_find_capability (struct pci_dev*,int ) ;
 struct pci_cap_saved_state* pci_find_saved_cap (struct pci_dev*,int ) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

__attribute__((used)) static void pci_restore_pcix_state(struct pci_dev *dev)
{
 int i = 0, pos;
 struct pci_cap_saved_state *save_state;
 u16 *cap;

 save_state = pci_find_saved_cap(dev, PCI_CAP_ID_PCIX);
 pos = pci_find_capability(dev, PCI_CAP_ID_PCIX);
 if (!save_state || !pos)
  return;
 cap = (u16 *)&save_state->cap.data[0];

 pci_write_config_word(dev, pos + PCI_X_CMD, cap[i++]);
}
