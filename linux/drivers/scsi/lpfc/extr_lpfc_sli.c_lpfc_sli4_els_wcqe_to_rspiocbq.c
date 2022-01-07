
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_wcqe_complete {int word3; int parameter; int total_data_placed; int word0; } ;
struct TYPE_6__ {int iocb_event; } ;
struct lpfc_sli_ring {int ring_lock; TYPE_3__ stats; } ;
struct TYPE_4__ {struct lpfc_wcqe_complete wcqe_cmpl; } ;
struct TYPE_5__ {TYPE_1__ cqe; } ;
struct lpfc_iocbq {TYPE_2__ cq_event; } ;
struct lpfc_hba {int dummy; } ;


 int KERN_WARNING ;
 int LOG_SLI ;
 int bf_get (int ,struct lpfc_wcqe_complete*) ;
 struct lpfc_sli_ring* lpfc_phba_elsring (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ,int ,int ) ;
 int lpfc_sli4_iocb_param_transfer (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*,struct lpfc_wcqe_complete*) ;
 struct lpfc_iocbq* lpfc_sli_iocbq_lookup_by_tag (struct lpfc_hba*,struct lpfc_sli_ring*,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_sli_ringtxcmpl_put (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ;
 int lpfc_wcqe_c_request_tag ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct lpfc_iocbq *
lpfc_sli4_els_wcqe_to_rspiocbq(struct lpfc_hba *phba,
          struct lpfc_iocbq *irspiocbq)
{
 struct lpfc_sli_ring *pring;
 struct lpfc_iocbq *cmdiocbq;
 struct lpfc_wcqe_complete *wcqe;
 unsigned long iflags;

 pring = lpfc_phba_elsring(phba);
 if (unlikely(!pring))
  return ((void*)0);

 wcqe = &irspiocbq->cq_event.cqe.wcqe_cmpl;
 pring->stats.iocb_event++;

 cmdiocbq = lpfc_sli_iocbq_lookup_by_tag(phba, pring,
    bf_get(lpfc_wcqe_c_request_tag, wcqe));
 if (unlikely(!cmdiocbq)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_SLI,
    "0386 ELS complete with no corresponding "
    "cmdiocb: 0x%x 0x%x 0x%x 0x%x\n",
    wcqe->word0, wcqe->total_data_placed,
    wcqe->parameter, wcqe->word3);
  lpfc_sli_release_iocbq(phba, irspiocbq);
  return ((void*)0);
 }

 spin_lock_irqsave(&pring->ring_lock, iflags);

 lpfc_sli_ringtxcmpl_put(phba, pring, cmdiocbq);
 spin_unlock_irqrestore(&pring->ring_lock, iflags);


 lpfc_sli4_iocb_param_transfer(phba, irspiocbq, cmdiocbq, wcqe);

 return irspiocbq;
}
