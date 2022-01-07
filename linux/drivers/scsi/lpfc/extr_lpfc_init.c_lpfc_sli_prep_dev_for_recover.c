
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;


 int KERN_ERR ;
 int LOG_INIT ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_sli_abort_fcp_rings (struct lpfc_hba*) ;

__attribute__((used)) static void
lpfc_sli_prep_dev_for_recover(struct lpfc_hba *phba)
{
 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "2723 PCI channel I/O abort preparing for recovery\n");





 lpfc_sli_abort_fcp_rings(phba);
}
