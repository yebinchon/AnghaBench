
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvme_loop_queue {int nvme_sq; int nvme_cq; } ;
struct TYPE_4__ {int flags; int command_id; int opcode; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
struct nvme_loop_iod {int work; int req; TYPE_3__ cmd; } ;
struct TYPE_5__ {int device; } ;
struct nvme_loop_ctrl {TYPE_2__ ctrl; struct nvme_loop_iod async_event_iod; struct nvme_loop_queue* queues; } ;
struct nvme_ctrl {int dummy; } ;


 int NVME_AQ_BLK_MQ_DEPTH ;
 int NVME_CMD_SGL_METABUF ;
 int dev_err (int ,char*) ;
 int memset (TYPE_3__*,int ,int) ;
 int nvme_admin_async_event ;
 int nvme_loop_ops ;
 int nvmet_req_init (int *,int *,int *,int *) ;
 int schedule_work (int *) ;
 struct nvme_loop_ctrl* to_loop_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_loop_submit_async_event(struct nvme_ctrl *arg)
{
 struct nvme_loop_ctrl *ctrl = to_loop_ctrl(arg);
 struct nvme_loop_queue *queue = &ctrl->queues[0];
 struct nvme_loop_iod *iod = &ctrl->async_event_iod;

 memset(&iod->cmd, 0, sizeof(iod->cmd));
 iod->cmd.common.opcode = nvme_admin_async_event;
 iod->cmd.common.command_id = NVME_AQ_BLK_MQ_DEPTH;
 iod->cmd.common.flags |= NVME_CMD_SGL_METABUF;

 if (!nvmet_req_init(&iod->req, &queue->nvme_cq, &queue->nvme_sq,
   &nvme_loop_ops)) {
  dev_err(ctrl->ctrl.device, "failed async event work\n");
  return;
 }

 schedule_work(&iod->work);
}
