
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_hba {int hbalock; } ;
struct completion {int dummy; } ;
struct TYPE_3__ {scalar_t__ context3; int mbox_flag; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int LPFC_MBX_WAKE ;
 int complete (struct completion*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
lpfc_sli_wake_mbox_wait(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq)
{
 unsigned long drvr_flag;
 struct completion *pmbox_done;





 pmboxq->mbox_flag |= LPFC_MBX_WAKE;
 spin_lock_irqsave(&phba->hbalock, drvr_flag);
 pmbox_done = (struct completion *)pmboxq->context3;
 if (pmbox_done)
  complete(pmbox_done);
 spin_unlock_irqrestore(&phba->hbalock, drvr_flag);
 return;
}
