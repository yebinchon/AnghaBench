
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int hbalock; } ;
struct lpfc_cq_event {int dummy; } ;


 struct lpfc_cq_event* __lpfc_sli4_cq_event_alloc (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct lpfc_cq_event *
lpfc_sli4_cq_event_alloc(struct lpfc_hba *phba)
{
 struct lpfc_cq_event *cq_event;
 unsigned long iflags;

 spin_lock_irqsave(&phba->hbalock, iflags);
 cq_event = __lpfc_sli4_cq_event_alloc(phba);
 spin_unlock_irqrestore(&phba->hbalock, iflags);
 return cq_event;
}
