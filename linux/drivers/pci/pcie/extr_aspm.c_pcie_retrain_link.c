
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pcie_link_state {struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ clear_retrain_link; } ;


 unsigned long LINK_RETRAIN_TIMEOUT ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_RL ;
 int PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_LT ;
 unsigned long jiffies ;
 int msleep (int) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static bool pcie_retrain_link(struct pcie_link_state *link)
{
 struct pci_dev *parent = link->pdev;
 unsigned long end_jiffies;
 u16 reg16;

 pcie_capability_read_word(parent, PCI_EXP_LNKCTL, &reg16);
 reg16 |= PCI_EXP_LNKCTL_RL;
 pcie_capability_write_word(parent, PCI_EXP_LNKCTL, reg16);
 if (parent->clear_retrain_link) {





  reg16 &= ~PCI_EXP_LNKCTL_RL;
  pcie_capability_write_word(parent, PCI_EXP_LNKCTL, reg16);
 }


 end_jiffies = jiffies + LINK_RETRAIN_TIMEOUT;
 do {
  pcie_capability_read_word(parent, PCI_EXP_LNKSTA, &reg16);
  if (!(reg16 & PCI_EXP_LNKSTA_LT))
   break;
  msleep(1);
 } while (time_before(jiffies, end_jiffies));
 return !(reg16 & PCI_EXP_LNKSTA_LT);
}
