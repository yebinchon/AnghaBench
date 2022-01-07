
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;


 int KERN_ERR ;
 int LOG_INIT ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_scsi_dev_block (struct lpfc_hba*) ;
 int lpfc_sli_flush_io_rings (struct lpfc_hba*) ;
 int lpfc_stop_hba_timers (struct lpfc_hba*) ;

__attribute__((used)) static void
lpfc_sli_prep_dev_for_perm_failure(struct lpfc_hba *phba)
{
 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "2711 PCI channel permanent disable for failure\n");

 lpfc_scsi_dev_block(phba);


 lpfc_stop_hba_timers(phba);


 lpfc_sli_flush_io_rings(phba);
}
