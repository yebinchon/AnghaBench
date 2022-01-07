
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvmet_fc_tgtport {int dummy; } ;
struct nvme_completion {void* status; int command_id; void* sq_id; int sq_head; } ;
struct TYPE_7__ {struct nvme_completion cqe; } ;
struct nvme_common_command {int command_id; } ;
struct TYPE_5__ {struct nvme_common_command common; } ;
struct TYPE_6__ {TYPE_1__ sqe; } ;
struct nvmet_fc_fcp_iod {int abort; scalar_t__ io_dir; scalar_t__ data_sg_cnt; TYPE_4__* queue; int flock; TYPE_3__ rspiubuf; TYPE_2__ cmdiubuf; } ;
struct TYPE_8__ {int qid; int sqhd; } ;


 int NVMET_FCOP_READDATA ;
 scalar_t__ NVMET_FCP_READ ;
 void* cpu_to_le16 (int) ;
 int memset (struct nvme_completion*,int ,int) ;
 int nvmet_fc_abort_op (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*) ;
 int nvmet_fc_free_tgt_pgs (struct nvmet_fc_fcp_iod*) ;
 int nvmet_fc_transfer_fcp_data (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*,int ) ;
 int nvmet_fc_xmt_fcp_rsp (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
__nvmet_fc_fcp_nvme_cmd_done(struct nvmet_fc_tgtport *tgtport,
   struct nvmet_fc_fcp_iod *fod, int status)
{
 struct nvme_common_command *sqe = &fod->cmdiubuf.sqe.common;
 struct nvme_completion *cqe = &fod->rspiubuf.cqe;
 unsigned long flags;
 bool abort;

 spin_lock_irqsave(&fod->flock, flags);
 abort = fod->abort;
 spin_unlock_irqrestore(&fod->flock, flags);


 if (!status)
  fod->queue->sqhd = cqe->sq_head;

 if (abort) {
  nvmet_fc_abort_op(tgtport, fod);
  return;
 }


 if (status) {

  memset(cqe, 0, sizeof(*cqe));
  cqe->sq_head = fod->queue->sqhd;
  cqe->sq_id = cpu_to_le16(fod->queue->qid);
  cqe->command_id = sqe->command_id;
  cqe->status = cpu_to_le16(status);
 } else {






  if ((fod->io_dir == NVMET_FCP_READ) && (fod->data_sg_cnt)) {

   nvmet_fc_transfer_fcp_data(tgtport, fod,
      NVMET_FCOP_READDATA);
   return;
  }


 }


 nvmet_fc_free_tgt_pgs(fod);

 nvmet_fc_xmt_fcp_rsp(tgtport, fod);
}
