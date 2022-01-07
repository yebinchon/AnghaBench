
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_wcqe_complete {int word3; int total_data_placed; int word0; int parameter; } ;
struct lpfc_nvmet_tgtport {int xmt_abort_rsp; int xmt_fcp_abort_cmpl; } ;
struct lpfc_nvmet_rcv_ctx {int flag; int ctxbuf; int oxid; int ctxlock; int list; int state; } ;
struct lpfc_iocbq {int * context3; struct lpfc_nvmet_rcv_ctx* context2; } ;
struct TYPE_4__ {int abts_nvmet_buf_list_lock; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; TYPE_1__* targetport; } ;
struct TYPE_3__ {scalar_t__ private; } ;


 int KERN_INFO ;
 int LOG_NVME_ABTS ;
 int LPFC_NVMET_ABORT_OP ;
 int LPFC_NVMET_CTX_RLS ;
 int LPFC_NVMET_STE_DONE ;
 int LPFC_NVMET_XBUSY ;
 int atomic_inc (int *) ;
 int list_del_init (int *) ;
 int lpfc_nvmet_ctxbuf_post (struct lpfc_hba*,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int,int,int ,int ,int ,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_nvmet_sol_fcp_abort_cmp(struct lpfc_hba *phba, struct lpfc_iocbq *cmdwqe,
        struct lpfc_wcqe_complete *wcqe)
{
 struct lpfc_nvmet_rcv_ctx *ctxp;
 struct lpfc_nvmet_tgtport *tgtp;
 uint32_t result;
 unsigned long flags;
 bool released = 0;

 ctxp = cmdwqe->context2;
 result = wcqe->parameter;

 tgtp = (struct lpfc_nvmet_tgtport *)phba->targetport->private;
 if (ctxp->flag & LPFC_NVMET_ABORT_OP)
  atomic_inc(&tgtp->xmt_fcp_abort_cmpl);

 spin_lock_irqsave(&ctxp->ctxlock, flags);
 ctxp->state = LPFC_NVMET_STE_DONE;




 if ((ctxp->flag & LPFC_NVMET_CTX_RLS) &&
     !(ctxp->flag & LPFC_NVMET_XBUSY)) {
  spin_lock(&phba->sli4_hba.abts_nvmet_buf_list_lock);
  list_del_init(&ctxp->list);
  spin_unlock(&phba->sli4_hba.abts_nvmet_buf_list_lock);
  released = 1;
 }
 ctxp->flag &= ~LPFC_NVMET_ABORT_OP;
 spin_unlock_irqrestore(&ctxp->ctxlock, flags);
 atomic_inc(&tgtp->xmt_abort_rsp);

 lpfc_printf_log(phba, KERN_INFO, LOG_NVME_ABTS,
   "6165 ABORT cmpl: oxid x%x flg x%x (%d) "
   "WCQE: %08x %08x %08x %08x\n",
   ctxp->oxid, ctxp->flag, released,
   wcqe->word0, wcqe->total_data_placed,
   result, wcqe->word3);

 cmdwqe->context2 = ((void*)0);
 cmdwqe->context3 = ((void*)0);




 if (released)
  lpfc_nvmet_ctxbuf_post(phba, ctxp->ctxbuf);


 lpfc_sli_release_iocbq(phba, cmdwqe);





}
