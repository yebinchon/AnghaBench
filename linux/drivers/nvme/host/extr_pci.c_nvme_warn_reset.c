
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int device; } ;
struct nvme_dev {TYPE_1__ ctrl; int dev; } ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_STATUS ;
 int dev_warn (int ,char*,int ,int) ;
 int pci_read_config_word (int ,int ,int*) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static void nvme_warn_reset(struct nvme_dev *dev, u32 csts)
{

 u16 pci_status;
 int result;

 result = pci_read_config_word(to_pci_dev(dev->dev), PCI_STATUS,
          &pci_status);
 if (result == PCIBIOS_SUCCESSFUL)
  dev_warn(dev->ctrl.device,
    "controller is down; will reset: CSTS=0x%x, PCI_STATUS=0x%hx\n",
    csts, pci_status);
 else
  dev_warn(dev->ctrl.device,
    "controller is down; will reset: CSTS=0x%x, PCI_STATUS read failed (%d)\n",
    csts, result);
}
