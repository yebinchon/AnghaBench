
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct aac_dev {int handle_pci_error; int scsi_host_ptr; } ;
struct Scsi_Host {int dummy; } ;
typedef int pci_ers_result_t ;
typedef enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;


 int PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int aac_adapter_ioremap (struct aac_dev*,int ) ;
 int aac_cancel_safw_rescan_worker (struct aac_dev*) ;
 int aac_flush_ios (struct aac_dev*) ;
 int aac_release_resources (struct aac_dev*) ;
 int dev_err (int *,char*,int) ;



 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int scsi_block_requests (int ) ;
 struct aac_dev* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static pci_ers_result_t aac_pci_error_detected(struct pci_dev *pdev,
     enum pci_channel_state error)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct aac_dev *aac = shost_priv(shost);

 dev_err(&pdev->dev, "aacraid: PCI error detected %x\n", error);

 switch (error) {
 case 129:
  return PCI_ERS_RESULT_CAN_RECOVER;
 case 130:
  aac->handle_pci_error = 1;

  scsi_block_requests(aac->scsi_host_ptr);
  aac_cancel_safw_rescan_worker(aac);
  aac_flush_ios(aac);
  aac_release_resources(aac);

  pci_disable_pcie_error_reporting(pdev);
  aac_adapter_ioremap(aac, 0);

  return PCI_ERS_RESULT_NEED_RESET;
 case 128:
  aac->handle_pci_error = 1;

  aac_flush_ios(aac);
  return PCI_ERS_RESULT_DISCONNECT;
 }

 return PCI_ERS_RESULT_NEED_RESET;
}
