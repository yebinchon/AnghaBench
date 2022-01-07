
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union lpfc_wqe128 {int dummy; } lpfc_wqe128 ;
typedef int uint32_t ;
struct lpfc_sli_ring {int txq; int ring_lock; } ;
struct lpfc_sglq {scalar_t__ sli4_xritag; int sli4_lxritag; } ;
struct lpfc_queue {struct lpfc_sli_ring* pring; } ;
struct TYPE_6__ {scalar_t__ ulpCommand; } ;
struct lpfc_iocbq {int iocb_flag; size_t hba_wqidx; scalar_t__ sli4_xritag; int sli4_lxritag; TYPE_3__ iocb; } ;
struct TYPE_5__ {struct lpfc_queue* els_wq; TYPE_1__* hdwq; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; } ;
struct TYPE_4__ {struct lpfc_queue* io_wq; } ;


 scalar_t__ CMD_ABORT_XRI_CN ;
 scalar_t__ CMD_CLOSE_XRI_CN ;
 int IOCB_BUSY ;
 int IOCB_ERROR ;
 int IOCB_SUCCESS ;
 int LPFC_IO_FCP ;
 int LPFC_USE_FCPWQIDX ;
 scalar_t__ NO_XRI ;
 int SLI_IOCB_RET_IOCB ;
 struct lpfc_sglq* __lpfc_get_active_sglq (struct lpfc_hba*,int ) ;
 struct lpfc_sglq* __lpfc_sli_get_els_sglq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int __lpfc_sli_ringtx_put (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ lpfc_sli4_bpl2sgl (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_sglq*) ;
 scalar_t__ lpfc_sli4_iocb2wqe (struct lpfc_hba*,struct lpfc_iocbq*,union lpfc_wqe128*) ;
 scalar_t__ lpfc_sli4_wq_put (struct lpfc_queue*,union lpfc_wqe128*) ;
 int lpfc_sli_ringtxcmpl_put (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ;

__attribute__((used)) static int
__lpfc_sli_issue_iocb_s4(struct lpfc_hba *phba, uint32_t ring_number,
    struct lpfc_iocbq *piocb, uint32_t flag)
{
 struct lpfc_sglq *sglq;
 union lpfc_wqe128 wqe;
 struct lpfc_queue *wq;
 struct lpfc_sli_ring *pring;


 if ((piocb->iocb_flag & LPFC_IO_FCP) ||
     (piocb->iocb_flag & LPFC_USE_FCPWQIDX)) {
  wq = phba->sli4_hba.hdwq[piocb->hba_wqidx].io_wq;
 } else {
  wq = phba->sli4_hba.els_wq;
 }


 pring = wq->pring;





 lockdep_assert_held(&pring->ring_lock);

 if (piocb->sli4_xritag == NO_XRI) {
  if (piocb->iocb.ulpCommand == CMD_ABORT_XRI_CN ||
      piocb->iocb.ulpCommand == CMD_CLOSE_XRI_CN)
   sglq = ((void*)0);
  else {
   if (!list_empty(&pring->txq)) {
    if (!(flag & SLI_IOCB_RET_IOCB)) {
     __lpfc_sli_ringtx_put(phba,
      pring, piocb);
     return IOCB_SUCCESS;
    } else {
     return IOCB_BUSY;
    }
   } else {
    sglq = __lpfc_sli_get_els_sglq(phba, piocb);
    if (!sglq) {
     if (!(flag & SLI_IOCB_RET_IOCB)) {
      __lpfc_sli_ringtx_put(phba,
        pring,
        piocb);
      return IOCB_SUCCESS;
     } else
      return IOCB_BUSY;
    }
   }
  }
 } else if (piocb->iocb_flag & LPFC_IO_FCP)

  sglq = ((void*)0);
 else {




  sglq = __lpfc_get_active_sglq(phba, piocb->sli4_lxritag);
  if (!sglq)
   return IOCB_ERROR;
 }

 if (sglq) {
  piocb->sli4_lxritag = sglq->sli4_lxritag;
  piocb->sli4_xritag = sglq->sli4_xritag;
  if (NO_XRI == lpfc_sli4_bpl2sgl(phba, piocb, sglq))
   return IOCB_ERROR;
 }

 if (lpfc_sli4_iocb2wqe(phba, piocb, &wqe))
  return IOCB_ERROR;

 if (lpfc_sli4_wq_put(wq, &wqe))
  return IOCB_ERROR;
 lpfc_sli_ringtxcmpl_put(phba, pring, piocb);

 return 0;
}
