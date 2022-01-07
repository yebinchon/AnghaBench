
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sli4_wcqe_xri_aborted {int word3; int word2; int parameter; int word0; } ;
struct lpfc_queue {int subtype; int hdwq; } ;
struct TYPE_2__ {int sp_els_xri_aborted_work_queue; } ;
struct lpfc_hba {int cfg_enable_fc4_type; int hbalock; int hba_flag; TYPE_1__ sli4_hba; int nvmet_support; } ;
struct lpfc_cq_event {int list; int hdwq; } ;


 int ELS_XRI_ABORT_EVENT ;
 int KERN_ERR ;
 int LOG_SLI ;

 int LPFC_ENABLE_NVME ;


 int list_add_tail (int *,int *) ;
 struct lpfc_cq_event* lpfc_cq_event_setup (struct lpfc_hba*,struct sli4_wcqe_xri_aborted*,int) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int ,int ,int ,int ) ;
 int lpfc_sli4_io_xri_aborted (struct lpfc_hba*,struct sli4_wcqe_xri_aborted*,int ) ;
 int lpfc_sli4_nvmet_xri_aborted (struct lpfc_hba*,struct sli4_wcqe_xri_aborted*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool
lpfc_sli4_sp_handle_abort_xri_wcqe(struct lpfc_hba *phba,
       struct lpfc_queue *cq,
       struct sli4_wcqe_xri_aborted *wcqe)
{
 bool workposted = 0;
 struct lpfc_cq_event *cq_event;
 unsigned long iflags;

 switch (cq->subtype) {
 case 129:
  lpfc_sli4_io_xri_aborted(phba, wcqe, cq->hdwq);
  if (phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) {

   if (phba->nvmet_support)
    lpfc_sli4_nvmet_xri_aborted(phba, wcqe);
  }
  workposted = 0;
  break;
 case 128:
 case 130:
  cq_event = lpfc_cq_event_setup(
   phba, wcqe, sizeof(struct sli4_wcqe_xri_aborted));
  if (!cq_event)
   return 0;
  cq_event->hdwq = cq->hdwq;
  spin_lock_irqsave(&phba->hbalock, iflags);
  list_add_tail(&cq_event->list,
         &phba->sli4_hba.sp_els_xri_aborted_work_queue);

  phba->hba_flag |= ELS_XRI_ABORT_EVENT;
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  workposted = 1;
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0603 Invalid CQ subtype %d: "
    "%08x %08x %08x %08x\n",
    cq->subtype, wcqe->word0, wcqe->parameter,
    wcqe->word2, wcqe->word3);
  workposted = 0;
  break;
 }
 return workposted;
}
