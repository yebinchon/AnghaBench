
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct nvme_fc_queue {int lldd_handle; int csn; int qnum; int connection_id; } ;
struct TYPE_18__ {int io_dir; int cmddma; int sqid; int status; scalar_t__ rcv_rsplen; scalar_t__ transferred_length; int payload_length; } ;
struct TYPE_11__ {int type; scalar_t__ addr; int length; } ;
struct TYPE_12__ {TYPE_2__ sgl; } ;
struct TYPE_13__ {TYPE_3__ dptr; } ;
struct TYPE_10__ {int flags; int metadata; } ;
struct nvme_command {TYPE_4__ rw; TYPE_1__ common; } ;
struct nvme_fc_cmd_iu {void* csn; int flags; void* data_len; int connection_id; struct nvme_command sqe; } ;
struct nvme_fc_fcp_op {int flags; int rq; int state; TYPE_9__ fcp_req; struct nvme_fc_cmd_iu cmd_iu; } ;
struct nvme_fc_ctrl {TYPE_7__* rport; TYPE_6__* lport; } ;
typedef enum nvmefc_fcp_datadir { ____Placeholder_nvmefc_fcp_datadir } nvmefc_fcp_datadir ;
typedef int blk_status_t ;
struct TYPE_17__ {scalar_t__ port_state; } ;
struct TYPE_16__ {TYPE_8__ remoteport; } ;
struct TYPE_15__ {int localport; TYPE_5__* ops; int dev; } ;
struct TYPE_14__ {int (* fcp_io ) (int *,TYPE_8__*,int ,TYPE_9__*) ;} ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 int DMA_TO_DEVICE ;
 int EAGAIN ;
 int EBUSY ;
 int ENOMEM ;
 int FCNVME_CMD_FLAGS_READ ;
 int FCNVME_CMD_FLAGS_WRITE ;
 int FCOP_FLAGS_AEN ;
 int FCPOP_STATE_ACTIVE ;
 int FCPOP_STATE_COMPLETE ;
 scalar_t__ FC_OBJSTATE_ONLINE ;



 int NVME_CMD_SGL_METABUF ;
 int NVME_SC_SUCCESS ;
 int NVME_SGL_FMT_TRANSPORT_A ;
 int NVME_TRANSPORT_SGL_DATA_DESC ;
 int WARN_ON_ONCE (int ) ;
 int __nvme_fc_fcpop_chk_teardowns (struct nvme_fc_ctrl*,struct nvme_fc_fcp_op*,int) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int ) ;
 int atomic_xchg (int *,int ) ;
 int blk_mq_start_request (int ) ;
 void* cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int fc_dma_sync_single_for_device (int ,int ,int,int ) ;
 int nvme_cleanup_cmd (int ) ;
 int nvme_fc_ctrl_get (struct nvme_fc_ctrl*) ;
 int nvme_fc_ctrl_put (struct nvme_fc_ctrl*) ;
 int nvme_fc_map_data (struct nvme_fc_ctrl*,int ,struct nvme_fc_fcp_op*) ;
 int nvme_fc_unmap_data (struct nvme_fc_ctrl*,int ,struct nvme_fc_fcp_op*) ;
 int stub1 (int *,TYPE_8__*,int ,TYPE_9__*) ;

__attribute__((used)) static blk_status_t
nvme_fc_start_fcp_op(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
 struct nvme_fc_fcp_op *op, u32 data_len,
 enum nvmefc_fcp_datadir io_dir)
{
 struct nvme_fc_cmd_iu *cmdiu = &op->cmd_iu;
 struct nvme_command *sqe = &cmdiu->sqe;
 int ret, opstate;





 if (ctrl->rport->remoteport.port_state != FC_OBJSTATE_ONLINE)
  return BLK_STS_RESOURCE;

 if (!nvme_fc_ctrl_get(ctrl))
  return BLK_STS_IOERR;


 cmdiu->connection_id = cpu_to_be64(queue->connection_id);
 cmdiu->data_len = cpu_to_be32(data_len);
 switch (io_dir) {
 case 128:
  cmdiu->flags = FCNVME_CMD_FLAGS_WRITE;
  break;
 case 129:
  cmdiu->flags = FCNVME_CMD_FLAGS_READ;
  break;
 case 130:
  cmdiu->flags = 0;
  break;
 }
 op->fcp_req.payload_length = data_len;
 op->fcp_req.io_dir = io_dir;
 op->fcp_req.transferred_length = 0;
 op->fcp_req.rcv_rsplen = 0;
 op->fcp_req.status = NVME_SC_SUCCESS;
 op->fcp_req.sqid = cpu_to_le16(queue->qnum);





 WARN_ON_ONCE(sqe->common.metadata);
 sqe->common.flags |= NVME_CMD_SGL_METABUF;
 sqe->rw.dptr.sgl.type = (NVME_TRANSPORT_SGL_DATA_DESC << 4) |
     NVME_SGL_FMT_TRANSPORT_A;
 sqe->rw.dptr.sgl.length = cpu_to_le32(data_len);
 sqe->rw.dptr.sgl.addr = 0;

 if (!(op->flags & FCOP_FLAGS_AEN)) {
  ret = nvme_fc_map_data(ctrl, op->rq, op);
  if (ret < 0) {
   nvme_cleanup_cmd(op->rq);
   nvme_fc_ctrl_put(ctrl);
   if (ret == -ENOMEM || ret == -EAGAIN)
    return BLK_STS_RESOURCE;
   return BLK_STS_IOERR;
  }
 }

 fc_dma_sync_single_for_device(ctrl->lport->dev, op->fcp_req.cmddma,
      sizeof(op->cmd_iu), DMA_TO_DEVICE);

 atomic_set(&op->state, FCPOP_STATE_ACTIVE);

 if (!(op->flags & FCOP_FLAGS_AEN))
  blk_mq_start_request(op->rq);

 cmdiu->csn = cpu_to_be32(atomic_inc_return(&queue->csn));
 ret = ctrl->lport->ops->fcp_io(&ctrl->lport->localport,
     &ctrl->rport->remoteport,
     queue->lldd_handle, &op->fcp_req);

 if (ret) {
  opstate = atomic_xchg(&op->state, FCPOP_STATE_COMPLETE);
  __nvme_fc_fcpop_chk_teardowns(ctrl, op, opstate);

  if (!(op->flags & FCOP_FLAGS_AEN))
   nvme_fc_unmap_data(ctrl, op->rq, op);

  nvme_fc_ctrl_put(ctrl);

  if (ctrl->rport->remoteport.port_state == FC_OBJSTATE_ONLINE &&
    ret != -EBUSY)
   return BLK_STS_IOERR;

  return BLK_STS_RESOURCE;
 }

 return BLK_STS_OK;
}
