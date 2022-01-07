
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int hbalock; } ;
struct lpfc_cq_event {int dummy; } ;


 int __lpfc_sli4_cq_event_release (struct lpfc_hba*,struct lpfc_cq_event*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
lpfc_sli4_cq_event_release(struct lpfc_hba *phba,
      struct lpfc_cq_event *cq_event)
{
 unsigned long iflags;
 spin_lock_irqsave(&phba->hbalock, iflags);
 __lpfc_sli4_cq_event_release(phba, cq_event);
 spin_unlock_irqrestore(&phba->hbalock, iflags);
}
