
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; int device; } ;
struct nvme_fc_ctrl {TYPE_1__ ctrl; int cnum; int err_work_active; int err_work; } ;


 scalar_t__ NVME_CTRL_CONNECTING ;
 scalar_t__ NVME_CTRL_LIVE ;
 int WARN_ON (int) ;
 int atomic_set (int *,int ) ;
 int atomic_xchg (int *,int) ;
 int dev_warn (int ,char*,int ,...) ;
 int nvme_fc_wq ;
 int nvme_reset_ctrl (TYPE_1__*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
nvme_fc_error_recovery(struct nvme_fc_ctrl *ctrl, char *errmsg)
{
 int active;
 if (ctrl->ctrl.state == NVME_CTRL_CONNECTING) {
  active = atomic_xchg(&ctrl->err_work_active, 1);
  if (!active && !queue_work(nvme_fc_wq, &ctrl->err_work)) {
   atomic_set(&ctrl->err_work_active, 0);
   WARN_ON(1);
  }
  return;
 }


 if (ctrl->ctrl.state != NVME_CTRL_LIVE)
  return;

 dev_warn(ctrl->ctrl.device,
  "NVME-FC{%d}: transport association error detected: %s\n",
  ctrl->cnum, errmsg);
 dev_warn(ctrl->ctrl.device,
  "NVME-FC{%d}: resetting controller\n", ctrl->cnum);

 nvme_reset_ctrl(&ctrl->ctrl);
}
