
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {scalar_t__ state; int state_wq; } ;


 scalar_t__ NVME_CTRL_RESETTING ;
 scalar_t__ nvme_change_ctrl_state (struct nvme_ctrl*,scalar_t__) ;
 scalar_t__ nvme_state_terminal (struct nvme_ctrl*) ;
 int wait_event (int ,int) ;

bool nvme_wait_reset(struct nvme_ctrl *ctrl)
{
 wait_event(ctrl->state_wq,
     nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING) ||
     nvme_state_terminal(ctrl));
 return ctrl->state == NVME_CTRL_RESETTING;
}
