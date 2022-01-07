
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_wcqe_complete {int word3; int total_data_placed; int word0; int parameter; } ;
struct lpfc_nvmet_tgtport {int xmt_ls_abort_cmpl; } ;
struct lpfc_nvmet_rcv_ctx {scalar_t__ state; int entry_cnt; int oxid; } ;
struct lpfc_iocbq {int * context3; struct lpfc_nvmet_rcv_ctx* context2; } ;
struct lpfc_hba {TYPE_1__* targetport; } ;
struct TYPE_2__ {scalar_t__ private; } ;


 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_NVME_ABTS ;
 int LOG_NVME_IOERR ;
 scalar_t__ LPFC_NVMET_STE_LS_ABORT ;
 int atomic_inc (int *) ;
 int kfree (struct lpfc_nvmet_rcv_ctx*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,struct lpfc_nvmet_rcv_ctx*,scalar_t__,int ,...) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;

__attribute__((used)) static void
lpfc_nvmet_xmt_ls_abort_cmp(struct lpfc_hba *phba, struct lpfc_iocbq *cmdwqe,
       struct lpfc_wcqe_complete *wcqe)
{
 struct lpfc_nvmet_rcv_ctx *ctxp;
 struct lpfc_nvmet_tgtport *tgtp;
 uint32_t result;

 ctxp = cmdwqe->context2;
 result = wcqe->parameter;

 tgtp = (struct lpfc_nvmet_tgtport *)phba->targetport->private;
 atomic_inc(&tgtp->xmt_ls_abort_cmpl);

 lpfc_printf_log(phba, KERN_INFO, LOG_NVME_ABTS,
   "6083 Abort cmpl: ctx x%px WCQE:%08x %08x %08x %08x\n",
   ctxp, wcqe->word0, wcqe->total_data_placed,
   result, wcqe->word3);

 if (!ctxp) {
  lpfc_printf_log(phba, KERN_ERR, LOG_NVME_ABTS,
    "6415 NVMET LS Abort No ctx: WCQE: "
     "%08x %08x %08x %08x\n",
    wcqe->word0, wcqe->total_data_placed,
    result, wcqe->word3);

  lpfc_sli_release_iocbq(phba, cmdwqe);
  return;
 }

 if (ctxp->state != LPFC_NVMET_STE_LS_ABORT) {
  lpfc_printf_log(phba, KERN_ERR, LOG_NVME_IOERR,
    "6416 NVMET LS abort cmpl state mismatch: "
    "oxid x%x: %d %d\n",
    ctxp->oxid, ctxp->state, ctxp->entry_cnt);
 }

 cmdwqe->context2 = ((void*)0);
 cmdwqe->context3 = ((void*)0);
 lpfc_sli_release_iocbq(phba, cmdwqe);
 kfree(ctxp);
}
