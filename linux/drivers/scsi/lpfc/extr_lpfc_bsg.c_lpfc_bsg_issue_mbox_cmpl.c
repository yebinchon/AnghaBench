
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct lpfc_hba {int mbox_mem_pool; int ct_ev_lock; } ;
struct fc_bsg_reply {int reply_payload_rcv_len; scalar_t__ result; } ;
struct TYPE_9__ {int dmabuffers; int pmboxq; scalar_t__ mb; } ;
struct TYPE_10__ {TYPE_3__ mbox; } ;
struct bsg_job_data {TYPE_4__ context_un; struct bsg_job* set_job; } ;
struct TYPE_8__ {int sg_cnt; int sg_list; int payload_len; } ;
struct bsg_job {TYPE_2__ reply_payload; struct fc_bsg_reply* reply; int * dd_data; } ;
struct TYPE_7__ {int mb; } ;
struct TYPE_11__ {TYPE_1__ u; struct bsg_job_data* ctx_ndlp; } ;
typedef int MAILBOX_t ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int bsg_job_done (struct bsg_job*,scalar_t__,int ) ;
 int kfree (struct bsg_job_data*) ;
 int lpfc_bsg_dma_page_free (struct lpfc_hba*,int ) ;
 int memcpy (int *,int *,int) ;
 int mempool_free (int ,int ) ;
 int sg_copy_from_buffer (int ,int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_bsg_issue_mbox_cmpl(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq)
{
 struct bsg_job_data *dd_data;
 struct fc_bsg_reply *bsg_reply;
 struct bsg_job *job;
 uint32_t size;
 unsigned long flags;
 uint8_t *pmb, *pmb_buf;

 dd_data = pmboxq->ctx_ndlp;





 pmb = (uint8_t *)&pmboxq->u.mb;
 pmb_buf = (uint8_t *)dd_data->context_un.mbox.mb;
 memcpy(pmb_buf, pmb, sizeof(MAILBOX_t));



 spin_lock_irqsave(&phba->ct_ev_lock, flags);
 job = dd_data->set_job;
 if (job) {

  job->dd_data = ((void*)0);
 }
 spin_unlock_irqrestore(&phba->ct_ev_lock, flags);



 if (job) {
  bsg_reply = job->reply;
  size = job->reply_payload.payload_len;
  bsg_reply->reply_payload_rcv_len =
   sg_copy_from_buffer(job->reply_payload.sg_list,
         job->reply_payload.sg_cnt,
         pmb_buf, size);
 }

 dd_data->set_job = ((void*)0);
 mempool_free(dd_data->context_un.mbox.pmboxq, phba->mbox_mem_pool);
 lpfc_bsg_dma_page_free(phba, dd_data->context_un.mbox.dmabuffers);
 kfree(dd_data);



 if (job) {
  bsg_reply->result = 0;
  bsg_job_done(job, bsg_reply->result,
          bsg_reply->reply_payload_rcv_len);
 }
 return;
}
