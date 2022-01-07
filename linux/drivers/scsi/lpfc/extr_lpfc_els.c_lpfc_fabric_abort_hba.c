
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int hbalock; int fabric_iocb_list; } ;


 int IOERR_SLI_ABORTED ;
 int IOSTAT_LOCAL_REJECT ;
 int LIST_HEAD (int ) ;
 int completions ;
 int list_splice_init (int *,int *) ;
 int lpfc_sli_cancel_iocbs (struct lpfc_hba*,int *,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void lpfc_fabric_abort_hba(struct lpfc_hba *phba)
{
 LIST_HEAD(completions);

 spin_lock_irq(&phba->hbalock);
 list_splice_init(&phba->fabric_iocb_list, &completions);
 spin_unlock_irq(&phba->hbalock);


 lpfc_sli_cancel_iocbs(phba, &completions, IOSTAT_LOCAL_REJECT,
         IOERR_SLI_ABORTED);
}
