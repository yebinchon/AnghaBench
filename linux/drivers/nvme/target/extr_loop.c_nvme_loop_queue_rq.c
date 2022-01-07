
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


struct request {int q; } ;
struct nvme_ns {int dummy; } ;
struct nvme_loop_queue {int nvme_sq; int nvme_cq; TYPE_3__* ctrl; int flags; } ;
struct TYPE_11__ {int transfer_len; int sg_cnt; int sg; int port; } ;
struct TYPE_10__ {int sgl; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_12__ {TYPE_2__ common; } ;
struct nvme_loop_iod {int work; TYPE_5__ req; TYPE_4__ sg_table; int first_sgl; TYPE_6__ cmd; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {struct nvme_loop_queue* driver_data; TYPE_1__* queue; } ;
typedef scalar_t__ blk_status_t ;
struct TYPE_9__ {int port; int ctrl; } ;
struct TYPE_7__ {struct nvme_ns* queuedata; } ;


 scalar_t__ BLK_STS_OK ;
 scalar_t__ BLK_STS_RESOURCE ;
 int NVME_CMD_SGL_METABUF ;
 int NVME_LOOP_Q_LIVE ;
 int SG_CHUNK_SIZE ;
 struct nvme_loop_iod* blk_mq_rq_to_pdu (struct request*) ;
 int blk_mq_start_request (struct request*) ;
 int blk_rq_map_sg (int ,struct request*,int ) ;
 scalar_t__ blk_rq_nr_phys_segments (struct request*) ;
 int blk_rq_payload_bytes (struct request*) ;
 int nvme_cleanup_cmd (struct request*) ;
 int nvme_loop_ops ;
 scalar_t__ nvme_setup_cmd (struct nvme_ns*,struct request*,TYPE_6__*) ;
 int nvmet_req_init (TYPE_5__*,int *,int *,int *) ;
 int nvmf_check_ready (int *,struct request*,int) ;
 scalar_t__ nvmf_fail_nonready_command (int *,struct request*) ;
 int schedule_work (int *) ;
 scalar_t__ sg_alloc_table_chained (TYPE_4__*,scalar_t__,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static blk_status_t nvme_loop_queue_rq(struct blk_mq_hw_ctx *hctx,
  const struct blk_mq_queue_data *bd)
{
 struct nvme_ns *ns = hctx->queue->queuedata;
 struct nvme_loop_queue *queue = hctx->driver_data;
 struct request *req = bd->rq;
 struct nvme_loop_iod *iod = blk_mq_rq_to_pdu(req);
 bool queue_ready = test_bit(NVME_LOOP_Q_LIVE, &queue->flags);
 blk_status_t ret;

 if (!nvmf_check_ready(&queue->ctrl->ctrl, req, queue_ready))
  return nvmf_fail_nonready_command(&queue->ctrl->ctrl, req);

 ret = nvme_setup_cmd(ns, req, &iod->cmd);
 if (ret)
  return ret;

 blk_mq_start_request(req);
 iod->cmd.common.flags |= NVME_CMD_SGL_METABUF;
 iod->req.port = queue->ctrl->port;
 if (!nvmet_req_init(&iod->req, &queue->nvme_cq,
   &queue->nvme_sq, &nvme_loop_ops))
  return BLK_STS_OK;

 if (blk_rq_nr_phys_segments(req)) {
  iod->sg_table.sgl = iod->first_sgl;
  if (sg_alloc_table_chained(&iod->sg_table,
    blk_rq_nr_phys_segments(req),
    iod->sg_table.sgl, SG_CHUNK_SIZE)) {
   nvme_cleanup_cmd(req);
   return BLK_STS_RESOURCE;
  }

  iod->req.sg = iod->sg_table.sgl;
  iod->req.sg_cnt = blk_rq_map_sg(req->q, req, iod->sg_table.sgl);
  iod->req.transfer_len = blk_rq_payload_bytes(req);
 }

 schedule_work(&iod->work);
 return BLK_STS_OK;
}
