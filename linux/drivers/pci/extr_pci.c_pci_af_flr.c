
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dev_flags; scalar_t__ imm_ready; } ;


 int ENOTTY ;
 int PCIE_RESET_READY_POLL_MS ;
 scalar_t__ PCI_AF_CAP ;
 int PCI_AF_CAP_FLR ;
 int PCI_AF_CAP_TP ;
 scalar_t__ PCI_AF_CTRL ;
 int PCI_AF_CTRL_FLR ;
 int PCI_AF_STATUS_TP ;
 int PCI_CAP_ID_AF ;
 int PCI_DEV_FLAGS_NO_FLR_RESET ;
 int msleep (int) ;
 int pci_dev_wait (struct pci_dev*,char*,int ) ;
 int pci_err (struct pci_dev*,char*) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,int*) ;
 int pci_wait_for_pending (struct pci_dev*,scalar_t__,int) ;
 int pci_write_config_byte (struct pci_dev*,scalar_t__,int ) ;

__attribute__((used)) static int pci_af_flr(struct pci_dev *dev, int probe)
{
 int pos;
 u8 cap;

 pos = pci_find_capability(dev, PCI_CAP_ID_AF);
 if (!pos)
  return -ENOTTY;

 if (dev->dev_flags & PCI_DEV_FLAGS_NO_FLR_RESET)
  return -ENOTTY;

 pci_read_config_byte(dev, pos + PCI_AF_CAP, &cap);
 if (!(cap & PCI_AF_CAP_TP) || !(cap & PCI_AF_CAP_FLR))
  return -ENOTTY;

 if (probe)
  return 0;






 if (!pci_wait_for_pending(dev, pos + PCI_AF_CTRL,
     PCI_AF_STATUS_TP << 8))
  pci_err(dev, "timed out waiting for pending transaction; performing AF function level reset anyway\n");

 pci_write_config_byte(dev, pos + PCI_AF_CTRL, PCI_AF_CTRL_FLR);

 if (dev->imm_ready)
  return 0;







 msleep(100);

 return pci_dev_wait(dev, "AF_FLR", PCIE_RESET_READY_POLL_MS);
}
