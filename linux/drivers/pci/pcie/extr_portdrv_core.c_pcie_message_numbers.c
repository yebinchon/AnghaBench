
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int aer_cap; } ;


 int PCIE_PORT_SERVICE_AER ;
 int PCIE_PORT_SERVICE_BWNOTIF ;
 int PCIE_PORT_SERVICE_DPC ;
 int PCIE_PORT_SERVICE_HP ;
 int PCIE_PORT_SERVICE_PME ;
 int PCI_ERR_ROOT_AER_IRQ ;
 int PCI_ERR_ROOT_STATUS ;
 int PCI_EXP_DPC_CAP ;
 int PCI_EXP_DPC_IRQ ;
 int PCI_EXP_FLAGS ;
 int PCI_EXP_FLAGS_IRQ ;
 int PCI_EXT_CAP_ID_DPC ;
 int max (int,int) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

__attribute__((used)) static int pcie_message_numbers(struct pci_dev *dev, int mask,
    u32 *pme, u32 *aer, u32 *dpc)
{
 u32 nvec = 0, pos;
 u16 reg16;
 if (mask & (PCIE_PORT_SERVICE_PME | PCIE_PORT_SERVICE_HP |
      PCIE_PORT_SERVICE_BWNOTIF)) {
  pcie_capability_read_word(dev, PCI_EXP_FLAGS, &reg16);
  *pme = (reg16 & PCI_EXP_FLAGS_IRQ) >> 9;
  nvec = *pme + 1;
 }
 if (mask & PCIE_PORT_SERVICE_DPC) {
  pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_DPC);
  if (pos) {
   pci_read_config_word(dev, pos + PCI_EXP_DPC_CAP,
          &reg16);
   *dpc = reg16 & PCI_EXP_DPC_IRQ;
   nvec = max(nvec, *dpc + 1);
  }
 }

 return nvec;
}
