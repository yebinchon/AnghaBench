
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_nodelist {int dummy; } ;
struct TYPE_7__ {unsigned int bdeSize; } ;
struct TYPE_8__ {TYPE_2__ bdl; } ;
struct TYPE_9__ {int* ulpWord; TYPE_3__ genreq64; } ;
struct TYPE_10__ {scalar_t__ ulpStatus; TYPE_4__ un; } ;
struct lpfc_iocbq {TYPE_5__ iocb; struct lpfc_dmabuf* context3; struct lpfc_dmabuf* context2; int iocb_flag; struct lpfc_dmabuf* context1; } ;
struct lpfc_hba {int hbalock; int ct_ev_lock; } ;
struct lpfc_bsg_iocb {struct lpfc_dmabuf* rmp; struct lpfc_nodelist* ndlp; } ;
struct TYPE_6__ {struct lpfc_bsg_iocb iocb; } ;
struct lpfc_dmabuf {int phys; int virt; TYPE_1__ context_un; struct bsg_job* set_job; } ;
struct fc_bsg_reply {int result; int reply_payload_rcv_len; } ;
struct bsg_job_data {int phys; int virt; TYPE_1__ context_un; struct bsg_job* set_job; } ;
struct bsg_job {int reply_payload; int * dd_data; struct fc_bsg_reply* reply; } ;
typedef TYPE_5__ IOCB_t ;


 int EACCES ;
 int EFAULT ;
 int ETIMEDOUT ;

 int IOERR_PARAM_MASK ;

 scalar_t__ IOSTAT_LOCAL_REJECT ;
 int LPFC_IO_CMD_OUTSTANDING ;
 int bsg_job_done (struct bsg_job*,int,int ) ;
 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_bsg_copy_data (struct lpfc_dmabuf*,int *,unsigned int,int ) ;
 int lpfc_free_bsg_buffers (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_bsg_send_mgmt_cmd_cmp(struct lpfc_hba *phba,
   struct lpfc_iocbq *cmdiocbq,
   struct lpfc_iocbq *rspiocbq)
{
 struct bsg_job_data *dd_data;
 struct bsg_job *job;
 struct fc_bsg_reply *bsg_reply;
 IOCB_t *rsp;
 struct lpfc_dmabuf *bmp, *cmp, *rmp;
 struct lpfc_nodelist *ndlp;
 struct lpfc_bsg_iocb *iocb;
 unsigned long flags;
 unsigned int rsp_size;
 int rc = 0;

 dd_data = cmdiocbq->context1;


 spin_lock_irqsave(&phba->ct_ev_lock, flags);
 job = dd_data->set_job;
 if (job) {
  bsg_reply = job->reply;

  job->dd_data = ((void*)0);
 }
 spin_unlock_irqrestore(&phba->ct_ev_lock, flags);


 spin_lock_irqsave(&phba->hbalock, flags);
 cmdiocbq->iocb_flag &= ~LPFC_IO_CMD_OUTSTANDING;
 spin_unlock_irqrestore(&phba->hbalock, flags);

 iocb = &dd_data->context_un.iocb;
 ndlp = iocb->ndlp;
 rmp = iocb->rmp;
 cmp = cmdiocbq->context2;
 bmp = cmdiocbq->context3;
 rsp = &rspiocbq->iocb;



 if (job) {
  if (rsp->ulpStatus) {
   if (rsp->ulpStatus == IOSTAT_LOCAL_REJECT) {
    switch (rsp->un.ulpWord[4] & IOERR_PARAM_MASK) {
    case 128:
     rc = -ETIMEDOUT;
     break;
    case 129:
     rc = -EFAULT;
     break;
    default:
     rc = -EACCES;
     break;
    }
   } else {
    rc = -EACCES;
   }
  } else {
   rsp_size = rsp->un.genreq64.bdl.bdeSize;
   bsg_reply->reply_payload_rcv_len =
    lpfc_bsg_copy_data(rmp, &job->reply_payload,
         rsp_size, 0);
  }
 }

 lpfc_free_bsg_buffers(phba, cmp);
 lpfc_free_bsg_buffers(phba, rmp);
 lpfc_mbuf_free(phba, bmp->virt, bmp->phys);
 kfree(bmp);
 lpfc_sli_release_iocbq(phba, cmdiocbq);
 lpfc_nlp_put(ndlp);
 kfree(dd_data);



 if (job) {
  bsg_reply->result = rc;
  bsg_job_done(job, bsg_reply->result,
          bsg_reply->reply_payload_rcv_len);
 }
 return;
}
