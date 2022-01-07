
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_ADAPTER {int pci_error_recovery; int shost; } ;
typedef int pci_ers_result_t ;
typedef int pci_channel_state_t ;


 int PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int _scsih_flush_running_cmds (struct MPT3SAS_ADAPTER*) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,int ) ;
 int mpt3sas_base_free_resources (struct MPT3SAS_ADAPTER*) ;
 int mpt3sas_base_stop_watchdog (struct MPT3SAS_ADAPTER*) ;



 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int scsi_block_requests (int ) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static pci_ers_result_t
scsih_pci_error_detected(struct pci_dev *pdev, pci_channel_state_t state)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);

 ioc_info(ioc, "PCI error: detected callback, state(%d)!!\n", state);

 switch (state) {
 case 129:
  return PCI_ERS_RESULT_CAN_RECOVER;
 case 130:

  ioc->pci_error_recovery = 1;
  scsi_block_requests(ioc->shost);
  mpt3sas_base_stop_watchdog(ioc);
  mpt3sas_base_free_resources(ioc);
  return PCI_ERS_RESULT_NEED_RESET;
 case 128:

  ioc->pci_error_recovery = 1;
  mpt3sas_base_stop_watchdog(ioc);
  _scsih_flush_running_cmds(ioc);
  return PCI_ERS_RESULT_DISCONNECT;
 }
 return PCI_ERS_RESULT_NEED_RESET;
}
