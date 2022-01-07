
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_hba {int hbalock; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {int mbox_flag; int mbox_cmpl; struct completion* context3; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int LPFC_MBX_WAKE ;
 int MBX_BUSY ;
 int MBX_NOWAIT ;
 int MBX_SUCCESS ;
 int MBX_TIMEOUT ;
 int init_completion (struct completion*) ;
 int lpfc_sli_def_mbox_cmpl ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 int lpfc_sli_wake_mbox_wait ;
 int msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (struct completion*,int ) ;

int
lpfc_sli_issue_mbox_wait(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq,
    uint32_t timeout)
{
 struct completion mbox_done;
 int retval;
 unsigned long flag;

 pmboxq->mbox_flag &= ~LPFC_MBX_WAKE;

 pmboxq->mbox_cmpl = lpfc_sli_wake_mbox_wait;


 init_completion(&mbox_done);
 pmboxq->context3 = &mbox_done;

 retval = lpfc_sli_issue_mbox(phba, pmboxq, MBX_NOWAIT);
 if (retval == MBX_BUSY || retval == MBX_SUCCESS) {
  wait_for_completion_timeout(&mbox_done,
         msecs_to_jiffies(timeout * 1000));

  spin_lock_irqsave(&phba->hbalock, flag);
  pmboxq->context3 = ((void*)0);




  if (pmboxq->mbox_flag & LPFC_MBX_WAKE) {
   retval = MBX_SUCCESS;
  } else {
   retval = MBX_TIMEOUT;
   pmboxq->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
  }
  spin_unlock_irqrestore(&phba->hbalock, flag);
 }
 return retval;
}
