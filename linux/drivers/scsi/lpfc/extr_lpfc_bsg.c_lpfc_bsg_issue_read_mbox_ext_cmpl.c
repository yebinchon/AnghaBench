
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int numBuf; int state; } ;
struct lpfc_hba {int mbox_mem_pool; TYPE_3__ mbox_ext_buf_ctx; } ;
struct fc_bsg_reply {int reply_payload_rcv_len; int result; } ;
struct bsg_job {struct fc_bsg_reply* reply; } ;
struct TYPE_8__ {scalar_t__ mbxStatus; } ;
struct TYPE_9__ {TYPE_1__ mb; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int KERN_INFO ;
 int LOG_LIBDFC ;
 scalar_t__ MBXERR_ERROR ;
 int bsg_job_done (struct bsg_job*,int ,int ) ;
 struct bsg_job* lpfc_bsg_issue_mbox_ext_handle_job (struct lpfc_hba*,TYPE_4__*) ;
 int lpfc_bsg_mbox_ext_session_reset (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,scalar_t__) ;
 int mempool_free (TYPE_4__*,int ) ;

__attribute__((used)) static void
lpfc_bsg_issue_read_mbox_ext_cmpl(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq)
{
 struct bsg_job *job;
 struct fc_bsg_reply *bsg_reply;

 job = lpfc_bsg_issue_mbox_ext_handle_job(phba, pmboxq);


 if (!job)
  pmboxq->u.mb.mbxStatus = MBXERR_ERROR;

 lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
   "2939 SLI_CONFIG ext-buffer rd mailbox command "
   "complete, ctxState:x%x, mbxStatus:x%x\n",
   phba->mbox_ext_buf_ctx.state, pmboxq->u.mb.mbxStatus);

 if (pmboxq->u.mb.mbxStatus || phba->mbox_ext_buf_ctx.numBuf == 1)
  lpfc_bsg_mbox_ext_session_reset(phba);


 mempool_free(pmboxq, phba->mbox_mem_pool);


 if (job) {
  bsg_reply = job->reply;
  bsg_job_done(job, bsg_reply->result,
          bsg_reply->reply_payload_rcv_len);
 }
 return;
}
