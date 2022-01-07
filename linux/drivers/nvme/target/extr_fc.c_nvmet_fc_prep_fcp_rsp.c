
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvmet_fc_tgtport {int dev; } ;
struct TYPE_8__ {scalar_t__ transfer_len; } ;
struct nvme_common_command {int flags; } ;
struct TYPE_6__ {struct nvme_common_command common; } ;
struct TYPE_7__ {TYPE_1__ sqe; } ;
struct nvme_completion {int sq_head; int status; } ;
struct nvme_fc_ersp_iu {void* xfrd_len; void* rsn; int iu_len; struct nvme_completion cqe; } ;
struct nvmet_fc_fcp_iod {scalar_t__ offset; int rspdma; TYPE_4__* fcpreq; TYPE_5__* queue; TYPE_3__ req; TYPE_2__ cmdiubuf; struct nvme_fc_ersp_iu rspiubuf; } ;
struct nvme_command {int dummy; } ;
struct TYPE_10__ {scalar_t__ ersp_ratio; int rsn; int zrspcnt; } ;
struct TYPE_9__ {scalar_t__ op; int rsplen; int rspdma; struct nvme_fc_ersp_iu* rspaddr; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ NVMET_FCOP_READDATA_RSP ;
 int NVME_CMD_FUSE_FIRST ;
 int NVME_CMD_FUSE_SECOND ;
 int NVME_FC_SIZEOF_ZEROS_RSP ;
 scalar_t__ atomic_inc_return (int *) ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (scalar_t__) ;
 int fc_dma_sync_single_for_device (int ,int ,int,int ) ;
 int le16_to_cpu (int ) ;
 int memset (struct nvme_fc_ersp_iu*,int ,int) ;
 scalar_t__ nvme_is_fabrics (struct nvme_command*) ;
 scalar_t__ queue_90percent_full (TYPE_5__*,int) ;

__attribute__((used)) static void
nvmet_fc_prep_fcp_rsp(struct nvmet_fc_tgtport *tgtport,
    struct nvmet_fc_fcp_iod *fod)
{
 struct nvme_fc_ersp_iu *ersp = &fod->rspiubuf;
 struct nvme_common_command *sqe = &fod->cmdiubuf.sqe.common;
 struct nvme_completion *cqe = &ersp->cqe;
 u32 *cqewd = (u32 *)cqe;
 bool send_ersp = 0;
 u32 rsn, rspcnt, xfr_length;

 if (fod->fcpreq->op == NVMET_FCOP_READDATA_RSP)
  xfr_length = fod->req.transfer_len;
 else
  xfr_length = fod->offset;
 rspcnt = atomic_inc_return(&fod->queue->zrspcnt);
 if (!(rspcnt % fod->queue->ersp_ratio) ||
     nvme_is_fabrics((struct nvme_command *) sqe) ||
     xfr_length != fod->req.transfer_len ||
     (le16_to_cpu(cqe->status) & 0xFFFE) || cqewd[0] || cqewd[1] ||
     (sqe->flags & (NVME_CMD_FUSE_FIRST | NVME_CMD_FUSE_SECOND)) ||
     queue_90percent_full(fod->queue, le16_to_cpu(cqe->sq_head)))
  send_ersp = 1;


 fod->fcpreq->rspaddr = ersp;
 fod->fcpreq->rspdma = fod->rspdma;

 if (!send_ersp) {
  memset(ersp, 0, NVME_FC_SIZEOF_ZEROS_RSP);
  fod->fcpreq->rsplen = NVME_FC_SIZEOF_ZEROS_RSP;
 } else {
  ersp->iu_len = cpu_to_be16(sizeof(*ersp)/sizeof(u32));
  rsn = atomic_inc_return(&fod->queue->rsn);
  ersp->rsn = cpu_to_be32(rsn);
  ersp->xfrd_len = cpu_to_be32(xfr_length);
  fod->fcpreq->rsplen = sizeof(*ersp);
 }

 fc_dma_sync_single_for_device(tgtport->dev, fod->rspdma,
      sizeof(fod->rspiubuf), DMA_TO_DEVICE);
}
