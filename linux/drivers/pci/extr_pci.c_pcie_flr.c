
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ imm_ready; } ;


 int PCIE_RESET_READY_POLL_MS ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_BCR_FLR ;
 int msleep (int) ;
 int pci_dev_wait (struct pci_dev*,char*,int ) ;
 int pci_err (struct pci_dev*,char*) ;
 int pci_wait_for_pending_transaction (struct pci_dev*) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

int pcie_flr(struct pci_dev *dev)
{
 if (!pci_wait_for_pending_transaction(dev))
  pci_err(dev, "timed out waiting for pending transaction; performing function level reset anyway\n");

 pcie_capability_set_word(dev, PCI_EXP_DEVCTL, PCI_EXP_DEVCTL_BCR_FLR);

 if (dev->imm_ready)
  return 0;






 msleep(100);

 return pci_dev_wait(dev, "FLR", PCIE_RESET_READY_POLL_MS);
}
