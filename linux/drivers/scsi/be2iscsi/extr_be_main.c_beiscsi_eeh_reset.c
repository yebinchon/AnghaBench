
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct beiscsi_hba {int dummy; } ;
typedef int pci_ers_result_t ;


 int BEISCSI_LOG_INIT ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int PCI_D0 ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int beiscsi_check_fw_rdy (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int pci_enable_device (struct pci_dev*) ;
 scalar_t__ pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;

__attribute__((used)) static pci_ers_result_t beiscsi_eeh_reset(struct pci_dev *pdev)
{
 struct beiscsi_hba *phba = ((void*)0);
 int status = 0;

 phba = (struct beiscsi_hba *)pci_get_drvdata(pdev);

 beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
      "BM_%d : EEH Reset\n");

 status = pci_enable_device(pdev);
 if (status)
  return PCI_ERS_RESULT_DISCONNECT;

 pci_set_master(pdev);
 pci_set_power_state(pdev, PCI_D0);
 pci_restore_state(pdev);

 status = beiscsi_check_fw_rdy(phba);
 if (status) {
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_INIT,
       "BM_%d : EEH Reset Completed\n");
 } else {
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_INIT,
       "BM_%d : EEH Reset Completion Failure\n");
  return PCI_ERS_RESULT_DISCONNECT;
 }

 return PCI_ERS_RESULT_RECOVERED;
}
