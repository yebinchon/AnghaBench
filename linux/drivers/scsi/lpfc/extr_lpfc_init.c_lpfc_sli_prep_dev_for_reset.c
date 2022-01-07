
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int pcidev; } ;


 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_MBX_WAIT ;
 int lpfc_block_mgmt_io (struct lpfc_hba*,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_scsi_dev_block (struct lpfc_hba*) ;
 int lpfc_sli_disable_intr (struct lpfc_hba*) ;
 int lpfc_sli_flush_io_rings (struct lpfc_hba*) ;
 int lpfc_stop_hba_timers (struct lpfc_hba*) ;
 int pci_disable_device (int ) ;

__attribute__((used)) static void
lpfc_sli_prep_dev_for_reset(struct lpfc_hba *phba)
{
 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "2710 PCI channel disable preparing for reset\n");


 lpfc_block_mgmt_io(phba, LPFC_MBX_WAIT);


 lpfc_scsi_dev_block(phba);


 lpfc_sli_flush_io_rings(phba);


 lpfc_stop_hba_timers(phba);


 lpfc_sli_disable_intr(phba);
 pci_disable_device(phba->pcidev);
}
