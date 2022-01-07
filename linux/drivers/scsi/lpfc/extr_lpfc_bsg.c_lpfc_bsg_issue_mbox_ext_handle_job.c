
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_15__ {TYPE_4__* mse; int sli_config_hdr; } ;
struct TYPE_16__ {TYPE_5__ sli_config_emb0_subsys; } ;
struct lpfc_sli_config_mbox {TYPE_6__ un; } ;
struct TYPE_18__ {int state; int mboxType; int nembType; struct lpfc_dmabuf* mbx_dmabuf; } ;
struct lpfc_hba {TYPE_8__ mbox_ext_buf_ctx; int ct_ev_lock; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct fc_bsg_reply {scalar_t__ result; int reply_payload_rcv_len; } ;
struct TYPE_12__ {scalar_t__ mb; } ;
struct TYPE_13__ {TYPE_2__ mbox; } ;
struct bsg_job_data {TYPE_3__ context_un; struct bsg_job* set_job; } ;
struct TYPE_17__ {int payload_len; int sg_cnt; int sg_list; } ;
struct bsg_job {TYPE_7__ reply_payload; int * dd_data; struct fc_bsg_reply* reply; } ;
struct TYPE_11__ {int mb; } ;
struct TYPE_19__ {TYPE_1__ u; struct bsg_job_data* ctx_buf; } ;
struct TYPE_14__ {int buf_len; } ;
typedef int MAILBOX_t ;
typedef TYPE_9__ LPFC_MBOXQ_t ;


 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_LIBDFC ;
 int LPFC_BSG_MBOX_DONE ;
 int bsg_bf_get (int ,int *) ;
 int dma_ebuf ;
 int kfree (struct bsg_job_data*) ;
 int lpfc_idiag_mbxacc_dump_bsg_mbox (struct lpfc_hba*,int ,int ,int ,int ,struct lpfc_dmabuf*,int ) ;
 int lpfc_mbox_hdr_emb ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ,int) ;
 int lpfc_sli_pcimem_bcopy (int *,int *,int ) ;
 int memcpy (int *,int *,int) ;
 int sg_copy_from_buffer (int ,int ,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sta_pos_addr ;

__attribute__((used)) static struct bsg_job *
lpfc_bsg_issue_mbox_ext_handle_job(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq)
{
 struct bsg_job_data *dd_data;
 struct bsg_job *job;
 struct fc_bsg_reply *bsg_reply;
 uint8_t *pmb, *pmb_buf;
 unsigned long flags;
 uint32_t size;
 int rc = 0;
 struct lpfc_dmabuf *dmabuf;
 struct lpfc_sli_config_mbox *sli_cfg_mbx;
 uint8_t *pmbx;

 dd_data = pmboxq->ctx_buf;


 spin_lock_irqsave(&phba->ct_ev_lock, flags);
 job = dd_data->set_job;
 if (job) {
  bsg_reply = job->reply;

  job->dd_data = ((void*)0);
 }
 spin_unlock_irqrestore(&phba->ct_ev_lock, flags);






 pmb = (uint8_t *)&pmboxq->u.mb;
 pmb_buf = (uint8_t *)dd_data->context_un.mbox.mb;

 memcpy(pmb_buf, pmb, sizeof(MAILBOX_t));

 dmabuf = phba->mbox_ext_buf_ctx.mbx_dmabuf;
 sli_cfg_mbx = (struct lpfc_sli_config_mbox *)dmabuf->virt;
 if (!bsg_bf_get(lpfc_mbox_hdr_emb,
     &sli_cfg_mbx->un.sli_config_emb0_subsys.sli_config_hdr)) {
  pmbx = (uint8_t *)dmabuf->virt;

  lpfc_sli_pcimem_bcopy(&pmbx[sizeof(MAILBOX_t)],
   &pmbx[sizeof(MAILBOX_t)],
   sli_cfg_mbx->un.sli_config_emb0_subsys.mse[0].buf_len);
 }



 if (job) {
  size = job->reply_payload.payload_len;
  bsg_reply->reply_payload_rcv_len =
   sg_copy_from_buffer(job->reply_payload.sg_list,
         job->reply_payload.sg_cnt,
         pmb_buf, size);


  bsg_reply->result = 0;

  lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
    "2937 SLI_CONFIG ext-buffer mailbox command "
    "(x%x/x%x) complete bsg job done, bsize:%d\n",
    phba->mbox_ext_buf_ctx.nembType,
    phba->mbox_ext_buf_ctx.mboxType, size);
  lpfc_idiag_mbxacc_dump_bsg_mbox(phba,
     phba->mbox_ext_buf_ctx.nembType,
     phba->mbox_ext_buf_ctx.mboxType,
     dma_ebuf, sta_pos_addr,
     phba->mbox_ext_buf_ctx.mbx_dmabuf, 0);
 } else {
  lpfc_printf_log(phba, KERN_ERR, LOG_LIBDFC,
    "2938 SLI_CONFIG ext-buffer mailbox "
    "command (x%x/x%x) failure, rc:x%x\n",
    phba->mbox_ext_buf_ctx.nembType,
    phba->mbox_ext_buf_ctx.mboxType, rc);
 }



 phba->mbox_ext_buf_ctx.state = LPFC_BSG_MBOX_DONE;
 kfree(dd_data);
 return job;
}
