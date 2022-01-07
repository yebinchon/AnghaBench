
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_rcqe {int dummy; } ;
struct lpfc_queue {scalar_t__ queue_id; int RQ_no_posted_buf; int RQ_buf_posted; int RQ_rcv_buf; int RQ_no_buf_found; } ;
struct lpfc_nvmet_tgtport {int xmt_fcp_release; int rcv_fcp_cmd_out; int rcv_fcp_cmd_in; } ;
struct TYPE_11__ {int sp_queue_event; struct lpfc_queue* dat_rq; struct lpfc_queue* hdr_rq; } ;
struct lpfc_hba {int hbalock; int hba_flag; TYPE_6__* targetport; int nvmet_support; TYPE_5__ sli4_hba; int pport; TYPE_1__* hbqs; } ;
struct TYPE_8__ {int rcqe_cmpl; } ;
struct TYPE_10__ {int list; TYPE_2__ cqe; } ;
struct TYPE_9__ {scalar_t__ virt; } ;
struct hbq_dmabuf {TYPE_4__ cq_event; TYPE_3__ hbuf; } ;
struct fc_frame_header {int fh_r_ctl; } ;
struct TYPE_12__ {struct lpfc_nvmet_tgtport* private; } ;
struct TYPE_7__ {int hbq_buffer_list; } ;


 scalar_t__ CQE_CODE_RECEIVE_V1 ;
 int FC_RCTL_DD_UNSOL_DATA ;
 int FC_RCTL_MDS_DIAGS ;




 int HBA_POST_RECEIVE_BUFFER ;
 int HBA_SP_QUEUE_EVT ;
 int KERN_ERR ;
 int LOG_NVME ;
 int LOG_SLI ;
 int atomic_read (int *) ;
 scalar_t__ bf_get (int ,struct lpfc_rcqe*) ;
 int list_add_tail (int *,int *) ;
 int lpfc_cqe_code ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,...) ;
 int lpfc_rcqe_rq_id ;
 int lpfc_rcqe_rq_id_v1 ;
 int lpfc_rcqe_status ;
 int lpfc_sli4_handle_mds_loopback (int ,struct hbq_dmabuf*) ;
 int lpfc_sli4_rq_release (struct lpfc_queue*,struct lpfc_queue*) ;
 struct hbq_dmabuf* lpfc_sli_hbqbuf_get (int *) ;
 int memcpy (int *,struct lpfc_rcqe*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
lpfc_sli4_sp_handle_rcqe(struct lpfc_hba *phba, struct lpfc_rcqe *rcqe)
{
 bool workposted = 0;
 struct fc_frame_header *fc_hdr;
 struct lpfc_queue *hrq = phba->sli4_hba.hdr_rq;
 struct lpfc_queue *drq = phba->sli4_hba.dat_rq;
 struct lpfc_nvmet_tgtport *tgtp;
 struct hbq_dmabuf *dma_buf;
 uint32_t status, rq_id;
 unsigned long iflags;


 if (unlikely(!hrq) || unlikely(!drq))
  return workposted;

 if (bf_get(lpfc_cqe_code, rcqe) == CQE_CODE_RECEIVE_V1)
  rq_id = bf_get(lpfc_rcqe_rq_id_v1, rcqe);
 else
  rq_id = bf_get(lpfc_rcqe_rq_id, rcqe);
 if (rq_id != hrq->queue_id)
  goto out;

 status = bf_get(lpfc_rcqe_status, rcqe);
 switch (status) {
 case 129:
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2537 Receive Frame Truncated!!\n");

 case 128:
  spin_lock_irqsave(&phba->hbalock, iflags);
  lpfc_sli4_rq_release(hrq, drq);
  dma_buf = lpfc_sli_hbqbuf_get(&phba->hbqs[0].hbq_buffer_list);
  if (!dma_buf) {
   hrq->RQ_no_buf_found++;
   spin_unlock_irqrestore(&phba->hbalock, iflags);
   goto out;
  }
  hrq->RQ_rcv_buf++;
  hrq->RQ_buf_posted--;
  memcpy(&dma_buf->cq_event.cqe.rcqe_cmpl, rcqe, sizeof(*rcqe));

  fc_hdr = (struct fc_frame_header *)dma_buf->hbuf.virt;

  if (fc_hdr->fh_r_ctl == FC_RCTL_MDS_DIAGS ||
      fc_hdr->fh_r_ctl == FC_RCTL_DD_UNSOL_DATA) {
   spin_unlock_irqrestore(&phba->hbalock, iflags);

   lpfc_sli4_handle_mds_loopback(phba->pport, dma_buf);
   break;
  }


  list_add_tail(&dma_buf->cq_event.list,
         &phba->sli4_hba.sp_queue_event);

  phba->hba_flag |= HBA_SP_QUEUE_EVT;
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  workposted = 1;
  break;
 case 131:
  if (phba->nvmet_support) {
   tgtp = phba->targetport->private;
   lpfc_printf_log(phba, KERN_ERR, LOG_SLI | LOG_NVME,
     "6402 RQE Error x%x, posted %d err_cnt "
     "%d: %x %x %x\n",
     status, hrq->RQ_buf_posted,
     hrq->RQ_no_posted_buf,
     atomic_read(&tgtp->rcv_fcp_cmd_in),
     atomic_read(&tgtp->rcv_fcp_cmd_out),
     atomic_read(&tgtp->xmt_fcp_release));
  }


 case 130:
  hrq->RQ_no_posted_buf++;

  spin_lock_irqsave(&phba->hbalock, iflags);
  phba->hba_flag |= HBA_POST_RECEIVE_BUFFER;
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  workposted = 1;
  break;
 }
out:
 return workposted;
}
