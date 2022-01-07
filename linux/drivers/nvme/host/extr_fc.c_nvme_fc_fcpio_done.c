
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


union nvme_result {int u64; } ;
struct request {int dummy; } ;
struct nvmefc_fcp_req {int status; int rcv_rsplen; int transferred_length; int rspdma; } ;
struct nvme_fc_queue {TYPE_6__* ctrl; } ;
struct nvme_completion {scalar_t__ status; union nvme_result result; int command_id; } ;
struct TYPE_9__ {int status_code; int xfrd_len; int iu_len; struct nvme_completion cqe; } ;
struct TYPE_10__ {int command_id; } ;
struct nvme_command {TYPE_4__ common; } ;
struct TYPE_8__ {int data_len; struct nvme_command sqe; } ;
struct nvme_fc_fcp_op {int flags; int state; TYPE_3__ rsp_iu; TYPE_2__ cmd_iu; struct nvmefc_fcp_req fcp_req; struct nvme_fc_queue* queue; struct nvme_fc_ctrl* ctrl; struct request* rq; } ;
struct nvme_fc_ersp_iu {int dummy; } ;
struct TYPE_11__ {int device; } ;
struct nvme_fc_ctrl {int cnum; TYPE_5__ ctrl; TYPE_1__* lport; } ;
typedef scalar_t__ __le16 ;
struct TYPE_12__ {int ctrl; } ;
struct TYPE_7__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int FCOP_FLAGS_AEN ;
 int FCPOP_STATE_ABORTED ;
 int FCPOP_STATE_COMPLETE ;
 int FCPOP_STATE_IDLE ;

 int NVME_SC_HOST_PATH_ERROR ;
 int NVME_SC_SUCCESS ;
 int __nvme_fc_fcpop_chk_teardowns (struct nvme_fc_ctrl*,struct nvme_fc_fcp_op*,int) ;
 int atomic_set (int *,int ) ;
 int atomic_xchg (int *,int ) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 scalar_t__ cpu_to_le16 (int) ;
 int dev_info (int ,char*,int ,int,...) ;
 int fc_dma_sync_single_for_cpu (int ,int ,int,int ) ;
 struct nvme_fc_fcp_op* fcp_req_to_fcp_op (struct nvmefc_fcp_req*) ;
 int nvme_complete_async_event (int *,scalar_t__,union nvme_result*) ;
 int nvme_end_request (struct request*,scalar_t__,union nvme_result) ;
 int nvme_fc_ctrl_put (struct nvme_fc_ctrl*) ;
 int nvme_fc_error_recovery (struct nvme_fc_ctrl*,char*) ;
 int unlikely (int) ;

__attribute__((used)) static void
nvme_fc_fcpio_done(struct nvmefc_fcp_req *req)
{
 struct nvme_fc_fcp_op *op = fcp_req_to_fcp_op(req);
 struct request *rq = op->rq;
 struct nvmefc_fcp_req *freq = &op->fcp_req;
 struct nvme_fc_ctrl *ctrl = op->ctrl;
 struct nvme_fc_queue *queue = op->queue;
 struct nvme_completion *cqe = &op->rsp_iu.cqe;
 struct nvme_command *sqe = &op->cmd_iu.sqe;
 __le16 status = cpu_to_le16(NVME_SC_SUCCESS << 1);
 union nvme_result result;
 bool terminate_assoc = 1;
 int opstate;
 opstate = atomic_xchg(&op->state, FCPOP_STATE_COMPLETE);

 fc_dma_sync_single_for_cpu(ctrl->lport->dev, op->fcp_req.rspdma,
    sizeof(op->rsp_iu), DMA_FROM_DEVICE);

 if (opstate == FCPOP_STATE_ABORTED)
  status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
 else if (freq->status) {
  status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
  dev_info(ctrl->ctrl.device,
   "NVME-FC{%d}: io failed due to lldd error %d\n",
   ctrl->cnum, freq->status);
 }






 if (status)
  goto done;
 switch (freq->rcv_rsplen) {

 case 0:
 case 128:





  if (freq->transferred_length !=
      be32_to_cpu(op->cmd_iu.data_len)) {
   status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
   dev_info(ctrl->ctrl.device,
    "NVME-FC{%d}: io failed due to bad transfer "
    "length: %d vs expected %d\n",
    ctrl->cnum, freq->transferred_length,
    be32_to_cpu(op->cmd_iu.data_len));
   goto done;
  }
  result.u64 = 0;
  break;

 case sizeof(struct nvme_fc_ersp_iu):




  if (unlikely(be16_to_cpu(op->rsp_iu.iu_len) !=
     (freq->rcv_rsplen / 4) ||
        be32_to_cpu(op->rsp_iu.xfrd_len) !=
     freq->transferred_length ||
        op->rsp_iu.status_code ||
        sqe->common.command_id != cqe->command_id)) {
   status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
   dev_info(ctrl->ctrl.device,
    "NVME-FC{%d}: io failed due to bad NVMe_ERSP: "
    "iu len %d, xfr len %d vs %d, status code "
    "%d, cmdid %d vs %d\n",
    ctrl->cnum, be16_to_cpu(op->rsp_iu.iu_len),
    be32_to_cpu(op->rsp_iu.xfrd_len),
    freq->transferred_length,
    op->rsp_iu.status_code,
    sqe->common.command_id,
    cqe->command_id);
   goto done;
  }
  result = cqe->result;
  status = cqe->status;
  break;

 default:
  status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
  dev_info(ctrl->ctrl.device,
   "NVME-FC{%d}: io failed due to odd NVMe_xRSP iu "
   "len %d\n",
   ctrl->cnum, freq->rcv_rsplen);
  goto done;
 }

 terminate_assoc = 0;

done:
 if (op->flags & FCOP_FLAGS_AEN) {
  nvme_complete_async_event(&queue->ctrl->ctrl, status, &result);
  __nvme_fc_fcpop_chk_teardowns(ctrl, op, opstate);
  atomic_set(&op->state, FCPOP_STATE_IDLE);
  op->flags = FCOP_FLAGS_AEN;
  nvme_fc_ctrl_put(ctrl);
  goto check_error;
 }

 __nvme_fc_fcpop_chk_teardowns(ctrl, op, opstate);
 nvme_end_request(rq, status, result);

check_error:
 if (terminate_assoc)
  nvme_fc_error_recovery(ctrl, "transport detected io error");
}
