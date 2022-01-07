
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ devfn; } ;
struct beiscsi_hba {int shost; int recover_port; int hw_check; int state; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int BEISCSI_HBA_PCI_ERR ;
 int BEISCSI_LOG_INIT ;
 int KERN_ERR ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int beiscsi_disable_port (struct beiscsi_hba*,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int beiscsi_session_fail ;
 int cancel_delayed_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int iscsi_host_for_each_session (int ,int ) ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_get_drvdata (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 int ssleep (int) ;

__attribute__((used)) static pci_ers_result_t beiscsi_eeh_err_detected(struct pci_dev *pdev,
  pci_channel_state_t state)
{
 struct beiscsi_hba *phba = ((void*)0);

 phba = (struct beiscsi_hba *)pci_get_drvdata(pdev);
 set_bit(BEISCSI_HBA_PCI_ERR, &phba->state);

 beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
      "BM_%d : EEH error detected\n");


 del_timer_sync(&phba->hw_check);
 cancel_delayed_work_sync(&phba->recover_port);


 iscsi_host_for_each_session(phba->shost, beiscsi_session_fail);
 beiscsi_disable_port(phba, 0);

 if (state == pci_channel_io_perm_failure) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : EEH : State PERM Failure");
  return PCI_ERS_RESULT_DISCONNECT;
 }

 pci_disable_device(pdev);







 if (pdev->devfn == 0)
  ssleep(30);

 return PCI_ERS_RESULT_NEED_RESET;
}
