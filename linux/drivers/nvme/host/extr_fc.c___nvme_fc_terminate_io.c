
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; int device; } ;
struct nvme_fc_ctrl {int cnum; TYPE_1__ ctrl; } ;


 scalar_t__ NVME_CTRL_CONNECTING ;
 int dev_err (int ,char*,int ) ;
 int nvme_change_ctrl_state (TYPE_1__*,scalar_t__) ;
 int nvme_fc_delete_association (struct nvme_fc_ctrl*) ;
 int nvme_stop_keep_alive (TYPE_1__*) ;

__attribute__((used)) static void
__nvme_fc_terminate_io(struct nvme_fc_ctrl *ctrl)
{
 nvme_stop_keep_alive(&ctrl->ctrl);


 nvme_fc_delete_association(ctrl);

 if (ctrl->ctrl.state != NVME_CTRL_CONNECTING &&
     !nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_CONNECTING))
  dev_err(ctrl->ctrl.device,
   "NVME-FC{%d}: error_recovery: Couldn't change state "
   "to CONNECTING\n", ctrl->cnum);
}
