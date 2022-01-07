
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int tag; } ;
struct nvme_rdma_request {struct nvme_rdma_queue* queue; } ;
struct nvme_rdma_queue {struct nvme_rdma_ctrl* ctrl; } ;
struct TYPE_2__ {scalar_t__ state; int device; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; int err_work; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;


 int BLK_EH_DONE ;
 int BLK_EH_RESET_TIMER ;
 scalar_t__ NVME_CTRL_LIVE ;
 scalar_t__ NVME_CTRL_RESETTING ;
 struct nvme_rdma_request* blk_mq_rq_to_pdu (struct request*) ;
 int dev_warn (int ,char*,...) ;
 int flush_work (int *) ;
 int nvme_rdma_error_recovery (struct nvme_rdma_ctrl*) ;
 int nvme_rdma_queue_idx (struct nvme_rdma_queue*) ;
 int nvme_rdma_teardown_admin_queue (struct nvme_rdma_ctrl*,int) ;
 int nvme_rdma_teardown_io_queues (struct nvme_rdma_ctrl*,int) ;

__attribute__((used)) static enum blk_eh_timer_return
nvme_rdma_timeout(struct request *rq, bool reserved)
{
 struct nvme_rdma_request *req = blk_mq_rq_to_pdu(rq);
 struct nvme_rdma_queue *queue = req->queue;
 struct nvme_rdma_ctrl *ctrl = queue->ctrl;

 dev_warn(ctrl->ctrl.device, "I/O %d QID %d timeout\n",
   rq->tag, nvme_rdma_queue_idx(queue));






 if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
  return BLK_EH_RESET_TIMER;

 if (ctrl->ctrl.state != NVME_CTRL_LIVE) {





  flush_work(&ctrl->err_work);
  nvme_rdma_teardown_io_queues(ctrl, 0);
  nvme_rdma_teardown_admin_queue(ctrl, 0);
  return BLK_EH_DONE;
 }

 dev_warn(ctrl->ctrl.device, "starting error recovery\n");
 nvme_rdma_error_recovery(ctrl);

 return BLK_EH_RESET_TIMER;
}
