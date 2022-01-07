
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_nvmet_tgtport {int xmt_abort_rsp_error; } ;
struct lpfc_nvmet_rcv_ctx {scalar_t__ state; int entry_cnt; int oxid; int flag; TYPE_3__* ctxbuf; int ctxlock; int list; int * hdwq; struct lpfc_iocbq* wqeq; } ;
struct lpfc_iocbq {size_t hba_wqidx; int iocb_flag; int * iocb_cmpl; int wqe_cmpl; } ;
struct TYPE_5__ {int abts_nvmet_buf_list_lock; int * hdwq; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; int hbalock; TYPE_1__* targetport; } ;
struct TYPE_6__ {struct lpfc_iocbq* iocbq; } ;
struct TYPE_4__ {scalar_t__ private; } ;


 int KERN_ERR ;
 int LOG_NVME_ABTS ;
 int LOG_NVME_IOERR ;
 int LPFC_IO_NVMET ;
 int LPFC_NVMET_ABORT_OP ;
 int LPFC_NVMET_CTX_RLS ;
 int LPFC_NVMET_STE_ABORT ;
 scalar_t__ LPFC_NVMET_STE_FREE ;
 int WQE_BUSY ;
 int WQE_SUCCESS ;
 int atomic_inc (int *) ;
 int list_del_init (int *) ;
 int lpfc_nvmet_ctxbuf_post (struct lpfc_hba*,TYPE_3__*) ;
 int lpfc_nvmet_unsol_fcp_abort_cmp ;
 int lpfc_nvmet_unsol_issue_abort (struct lpfc_hba*,struct lpfc_nvmet_rcv_ctx*,int ,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int,int) ;
 int lpfc_sli4_issue_wqe (struct lpfc_hba*,int *,struct lpfc_iocbq*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
lpfc_nvmet_unsol_fcp_issue_abort(struct lpfc_hba *phba,
     struct lpfc_nvmet_rcv_ctx *ctxp,
     uint32_t sid, uint16_t xri)
{
 struct lpfc_nvmet_tgtport *tgtp;
 struct lpfc_iocbq *abts_wqeq;
 unsigned long flags;
 bool released = 0;
 int rc;

 tgtp = (struct lpfc_nvmet_tgtport *)phba->targetport->private;
 if (!ctxp->wqeq) {
  ctxp->wqeq = ctxp->ctxbuf->iocbq;
  ctxp->wqeq->hba_wqidx = 0;
 }

 if (ctxp->state == LPFC_NVMET_STE_FREE) {
  lpfc_printf_log(phba, KERN_ERR, LOG_NVME_IOERR,
    "6417 NVMET ABORT ctx freed %d %d oxid x%x\n",
    ctxp->state, ctxp->entry_cnt, ctxp->oxid);
  rc = WQE_BUSY;
  goto aerr;
 }
 ctxp->state = LPFC_NVMET_STE_ABORT;
 ctxp->entry_cnt++;
 rc = lpfc_nvmet_unsol_issue_abort(phba, ctxp, sid, xri);
 if (rc == 0)
  goto aerr;

 spin_lock_irqsave(&phba->hbalock, flags);
 abts_wqeq = ctxp->wqeq;
 abts_wqeq->wqe_cmpl = lpfc_nvmet_unsol_fcp_abort_cmp;
 abts_wqeq->iocb_cmpl = ((void*)0);
 abts_wqeq->iocb_flag |= LPFC_IO_NVMET;
 if (!ctxp->hdwq)
  ctxp->hdwq = &phba->sli4_hba.hdwq[abts_wqeq->hba_wqidx];

 rc = lpfc_sli4_issue_wqe(phba, ctxp->hdwq, abts_wqeq);
 spin_unlock_irqrestore(&phba->hbalock, flags);
 if (rc == WQE_SUCCESS) {
  return 0;
 }

aerr:
 spin_lock_irqsave(&ctxp->ctxlock, flags);
 if (ctxp->flag & LPFC_NVMET_CTX_RLS) {
  spin_lock(&phba->sli4_hba.abts_nvmet_buf_list_lock);
  list_del_init(&ctxp->list);
  spin_unlock(&phba->sli4_hba.abts_nvmet_buf_list_lock);
  released = 1;
 }
 ctxp->flag &= ~(LPFC_NVMET_ABORT_OP | LPFC_NVMET_CTX_RLS);
 spin_unlock_irqrestore(&ctxp->ctxlock, flags);

 atomic_inc(&tgtp->xmt_abort_rsp_error);
 lpfc_printf_log(phba, KERN_ERR, LOG_NVME_ABTS,
   "6135 Failed to Issue ABTS for oxid x%x. Status x%x "
   "(%x)\n",
   ctxp->oxid, rc, released);
 if (released)
  lpfc_nvmet_ctxbuf_post(phba, ctxp->ctxbuf);
 return 1;
}
