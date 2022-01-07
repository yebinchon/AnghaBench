
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct request {int tag; } ;
struct nvme_tcp_request {TYPE_4__* queue; struct nvme_tcp_cmd_pdu* pdu; } ;
struct TYPE_7__ {scalar_t__ state; int device; } ;
struct nvme_tcp_ctrl {TYPE_2__ ctrl; int err_work; } ;
struct TYPE_6__ {int type; } ;
struct nvme_tcp_cmd_pdu {TYPE_1__ hdr; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_8__ {struct nvme_tcp_ctrl* ctrl; } ;


 int BLK_EH_DONE ;
 int BLK_EH_RESET_TIMER ;
 scalar_t__ NVME_CTRL_LIVE ;
 scalar_t__ NVME_CTRL_RESETTING ;
 struct nvme_tcp_request* blk_mq_rq_to_pdu (struct request*) ;
 int dev_warn (int ,char*,...) ;
 int flush_work (int *) ;
 int nvme_tcp_error_recovery (TYPE_2__*) ;
 int nvme_tcp_queue_id (TYPE_4__*) ;
 int nvme_tcp_teardown_admin_queue (TYPE_2__*,int) ;
 int nvme_tcp_teardown_io_queues (TYPE_2__*,int) ;

__attribute__((used)) static enum blk_eh_timer_return
nvme_tcp_timeout(struct request *rq, bool reserved)
{
 struct nvme_tcp_request *req = blk_mq_rq_to_pdu(rq);
 struct nvme_tcp_ctrl *ctrl = req->queue->ctrl;
 struct nvme_tcp_cmd_pdu *pdu = req->pdu;






 if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
  return BLK_EH_RESET_TIMER;

 dev_warn(ctrl->ctrl.device,
  "queue %d: timeout request %#x type %d\n",
  nvme_tcp_queue_id(req->queue), rq->tag, pdu->hdr.type);

 if (ctrl->ctrl.state != NVME_CTRL_LIVE) {





  flush_work(&ctrl->err_work);
  nvme_tcp_teardown_io_queues(&ctrl->ctrl, 0);
  nvme_tcp_teardown_admin_queue(&ctrl->ctrl, 0);
  return BLK_EH_DONE;
 }

 dev_warn(ctrl->ctrl.device, "starting error recovery\n");
 nvme_tcp_error_recovery(&ctrl->ctrl);

 return BLK_EH_RESET_TIMER;
}
