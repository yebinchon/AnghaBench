
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct nvme_tcp_request {int dummy; } ;
struct nvme_tcp_queue {TYPE_1__* ctrl; int flags; } ;
struct nvme_ns {int dummy; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {struct nvme_tcp_queue* driver_data; TYPE_2__* queue; } ;
typedef int blk_status_t ;
struct TYPE_4__ {struct nvme_ns* queuedata; } ;
struct TYPE_3__ {int ctrl; } ;


 int BLK_STS_OK ;
 int NVME_TCP_Q_LIVE ;
 struct nvme_tcp_request* blk_mq_rq_to_pdu (struct request*) ;
 int blk_mq_start_request (struct request*) ;
 int nvme_tcp_queue_request (struct nvme_tcp_request*) ;
 int nvme_tcp_setup_cmd_pdu (struct nvme_ns*,struct request*) ;
 int nvmf_check_ready (int *,struct request*,int) ;
 int nvmf_fail_nonready_command (int *,struct request*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static blk_status_t nvme_tcp_queue_rq(struct blk_mq_hw_ctx *hctx,
  const struct blk_mq_queue_data *bd)
{
 struct nvme_ns *ns = hctx->queue->queuedata;
 struct nvme_tcp_queue *queue = hctx->driver_data;
 struct request *rq = bd->rq;
 struct nvme_tcp_request *req = blk_mq_rq_to_pdu(rq);
 bool queue_ready = test_bit(NVME_TCP_Q_LIVE, &queue->flags);
 blk_status_t ret;

 if (!nvmf_check_ready(&queue->ctrl->ctrl, rq, queue_ready))
  return nvmf_fail_nonready_command(&queue->ctrl->ctrl, rq);

 ret = nvme_tcp_setup_cmd_pdu(ns, rq);
 if (unlikely(ret))
  return ret;

 blk_mq_start_request(rq);

 nvme_tcp_queue_request(req);

 return BLK_STS_OK;
}
