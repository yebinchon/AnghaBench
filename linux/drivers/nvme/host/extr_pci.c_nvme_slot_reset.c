
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int device; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_RECOVERED ;
 int dev_info (int ,char*) ;
 int nvme_reset_ctrl (TYPE_1__*) ;
 struct nvme_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t nvme_slot_reset(struct pci_dev *pdev)
{
 struct nvme_dev *dev = pci_get_drvdata(pdev);

 dev_info(dev->ctrl.device, "restart after slot reset\n");
 pci_restore_state(pdev);
 nvme_reset_ctrl(&dev->ctrl);
 return PCI_ERS_RESULT_RECOVERED;
}
