
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int hbalock; int link_state; } ;


 int LPFC_HBA_ERROR ;
 int LPFC_MBX_NO_WAIT ;
 int lpfc_hba_down_post (struct lpfc_hba*) ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int ) ;
 int lpfc_sli_flush_io_rings (struct lpfc_hba*) ;
 int lpfc_unblock_mgmt_io (struct lpfc_hba*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_sli4_offline_eratt(struct lpfc_hba *phba)
{
 spin_lock_irq(&phba->hbalock);
 phba->link_state = LPFC_HBA_ERROR;
 spin_unlock_irq(&phba->hbalock);

 lpfc_offline_prep(phba, LPFC_MBX_NO_WAIT);
 lpfc_sli_flush_io_rings(phba);
 lpfc_offline(phba);
 lpfc_hba_down_post(phba);
 lpfc_unblock_mgmt_io(phba);
}
