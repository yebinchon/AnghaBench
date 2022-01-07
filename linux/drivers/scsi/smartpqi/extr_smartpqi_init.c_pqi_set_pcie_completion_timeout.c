
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_DEVCTL2_COMP_TIMEOUT ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static inline int pqi_set_pcie_completion_timeout(struct pci_dev *pci_dev,
 u16 timeout)
{
 return pcie_capability_clear_and_set_word(pci_dev, PCI_EXP_DEVCTL2,
  PCI_EXP_DEVCTL2_COMP_TIMEOUT, timeout);
}
