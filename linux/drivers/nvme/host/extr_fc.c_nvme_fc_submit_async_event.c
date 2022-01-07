
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_fc_fcp_op {int queue; } ;
struct TYPE_2__ {int device; } ;
struct nvme_fc_ctrl {int flags; TYPE_1__ ctrl; struct nvme_fc_fcp_op* aen_ops; int lock; } ;
struct nvme_ctrl {int dummy; } ;
typedef scalar_t__ blk_status_t ;


 int FCCTRL_TERMIO ;
 int NVMEFC_FCP_NODATA ;
 int dev_err (int ,char*) ;
 scalar_t__ nvme_fc_start_fcp_op (struct nvme_fc_ctrl*,int ,struct nvme_fc_fcp_op*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct nvme_fc_ctrl* to_fc_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void
nvme_fc_submit_async_event(struct nvme_ctrl *arg)
{
 struct nvme_fc_ctrl *ctrl = to_fc_ctrl(arg);
 struct nvme_fc_fcp_op *aen_op;
 unsigned long flags;
 bool terminating = 0;
 blk_status_t ret;

 spin_lock_irqsave(&ctrl->lock, flags);
 if (ctrl->flags & FCCTRL_TERMIO)
  terminating = 1;
 spin_unlock_irqrestore(&ctrl->lock, flags);

 if (terminating)
  return;

 aen_op = &ctrl->aen_ops[0];

 ret = nvme_fc_start_fcp_op(ctrl, aen_op->queue, aen_op, 0,
     NVMEFC_FCP_NODATA);
 if (ret)
  dev_err(ctrl->ctrl.device,
   "failed async event work\n");
}
