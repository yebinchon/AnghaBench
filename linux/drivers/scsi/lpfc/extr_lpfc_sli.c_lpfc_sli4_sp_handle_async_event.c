
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_mcqe {int trailer; int mcqe_tag1; int mcqe_tag0; int word0; } ;
struct TYPE_2__ {int sp_asynce_work_queue; } ;
struct lpfc_hba {int hbalock; int hba_flag; TYPE_1__ sli4_hba; } ;
struct lpfc_cq_event {int list; } ;


 int ASYNC_EVENT ;
 int KERN_INFO ;
 int LOG_SLI ;
 int list_add_tail (int *,int *) ;
 struct lpfc_cq_event* lpfc_cq_event_setup (struct lpfc_hba*,struct lpfc_mcqe*,int) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool
lpfc_sli4_sp_handle_async_event(struct lpfc_hba *phba, struct lpfc_mcqe *mcqe)
{
 struct lpfc_cq_event *cq_event;
 unsigned long iflags;

 lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
   "0392 Async Event: word0:x%x, word1:x%x, "
   "word2:x%x, word3:x%x\n", mcqe->word0,
   mcqe->mcqe_tag0, mcqe->mcqe_tag1, mcqe->trailer);

 cq_event = lpfc_cq_event_setup(phba, mcqe, sizeof(struct lpfc_mcqe));
 if (!cq_event)
  return 0;
 spin_lock_irqsave(&phba->hbalock, iflags);
 list_add_tail(&cq_event->list, &phba->sli4_hba.sp_asynce_work_queue);

 phba->hba_flag |= ASYNC_EVENT;
 spin_unlock_irqrestore(&phba->hbalock, iflags);

 return 1;
}
