
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_wcqe_complete {int parameter; int word3; int total_data_placed; int word0; } ;
struct TYPE_2__ {int iocb_event; } ;
struct lpfc_sli_ring {int ring_lock; TYPE_1__ stats; } ;
struct lpfc_queue {int isr_timestamp; struct lpfc_sli_ring* pring; } ;
struct lpfc_iocbq {int iocb_flag; int (* iocb_cmpl ) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;int (* wqe_cmpl ) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_wcqe_complete*) ;int isr_timestamp; } ;
struct lpfc_hba {int hbalock; int (* lpfc_rampdown_queue_depth ) (struct lpfc_hba*) ;} ;


 int IOERR_NO_RESOURCES ;
 int IOERR_PARAM_MASK ;
 scalar_t__ IOSTAT_LOCAL_REJECT ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_SLI ;
 int LPFC_DRIVER_ABORTED ;
 scalar_t__ bf_get (int ,struct lpfc_wcqe_complete*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,scalar_t__,...) ;
 int lpfc_sli4_iocb_param_transfer (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*,struct lpfc_wcqe_complete*) ;
 struct lpfc_iocbq* lpfc_sli_iocbq_lookup_by_tag (struct lpfc_hba*,struct lpfc_sli_ring*,scalar_t__) ;
 int lpfc_wcqe_c_request_tag ;
 int lpfc_wcqe_c_status ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct lpfc_hba*) ;
 int stub2 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_wcqe_complete*) ;
 int stub3 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
lpfc_sli4_fp_handle_fcp_wcqe(struct lpfc_hba *phba, struct lpfc_queue *cq,
        struct lpfc_wcqe_complete *wcqe)
{
 struct lpfc_sli_ring *pring = cq->pring;
 struct lpfc_iocbq *cmdiocbq;
 struct lpfc_iocbq irspiocbq;
 unsigned long iflags;


 if (unlikely(bf_get(lpfc_wcqe_c_status, wcqe))) {



  if (((bf_get(lpfc_wcqe_c_status, wcqe) ==
       IOSTAT_LOCAL_REJECT)) &&
      ((wcqe->parameter & IOERR_PARAM_MASK) ==
       IOERR_NO_RESOURCES))
   phba->lpfc_rampdown_queue_depth(phba);


  lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
    "0373 FCP CQE error: status=x%x: "
    "CQE: %08x %08x %08x %08x\n",
    bf_get(lpfc_wcqe_c_status, wcqe),
    wcqe->word0, wcqe->total_data_placed,
    wcqe->parameter, wcqe->word3);
 }


 spin_lock_irqsave(&pring->ring_lock, iflags);
 pring->stats.iocb_event++;
 spin_unlock_irqrestore(&pring->ring_lock, iflags);
 cmdiocbq = lpfc_sli_iocbq_lookup_by_tag(phba, pring,
    bf_get(lpfc_wcqe_c_request_tag, wcqe));
 if (unlikely(!cmdiocbq)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_SLI,
    "0374 FCP complete with no corresponding "
    "cmdiocb: iotag (%d)\n",
    bf_get(lpfc_wcqe_c_request_tag, wcqe));
  return;
 }



 if (cmdiocbq->iocb_cmpl == ((void*)0)) {
  if (cmdiocbq->wqe_cmpl) {
   if (cmdiocbq->iocb_flag & LPFC_DRIVER_ABORTED) {
    spin_lock_irqsave(&phba->hbalock, iflags);
    cmdiocbq->iocb_flag &= ~LPFC_DRIVER_ABORTED;
    spin_unlock_irqrestore(&phba->hbalock, iflags);
   }


   (cmdiocbq->wqe_cmpl)(phba, cmdiocbq, wcqe);
   return;
  }
  lpfc_printf_log(phba, KERN_WARNING, LOG_SLI,
    "0375 FCP cmdiocb not callback function "
    "iotag: (%d)\n",
    bf_get(lpfc_wcqe_c_request_tag, wcqe));
  return;
 }


 lpfc_sli4_iocb_param_transfer(phba, &irspiocbq, cmdiocbq, wcqe);

 if (cmdiocbq->iocb_flag & LPFC_DRIVER_ABORTED) {
  spin_lock_irqsave(&phba->hbalock, iflags);
  cmdiocbq->iocb_flag &= ~LPFC_DRIVER_ABORTED;
  spin_unlock_irqrestore(&phba->hbalock, iflags);
 }


 (cmdiocbq->iocb_cmpl)(phba, cmdiocbq, &irspiocbq);
}
