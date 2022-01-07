
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int device; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;
typedef int pci_ers_result_t ;
typedef int pci_channel_state_t ;


 int PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int dev_warn (int ,char*) ;
 int nvme_dev_disable (struct nvme_dev*,int) ;



 struct nvme_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
      pci_channel_state_t state)
{
 struct nvme_dev *dev = pci_get_drvdata(pdev);






 switch (state) {
 case 129:
  return PCI_ERS_RESULT_CAN_RECOVER;
 case 130:
  dev_warn(dev->ctrl.device,
   "frozen state error detected, reset controller\n");
  nvme_dev_disable(dev, 0);
  return PCI_ERS_RESULT_NEED_RESET;
 case 128:
  dev_warn(dev->ctrl.device,
   "failure state error detected, request disconnect\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }
 return PCI_ERS_RESULT_NEED_RESET;
}
