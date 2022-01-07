
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int reset_work; } ;


 int EBUSY ;
 int NVME_CTRL_RESETTING ;
 int nvme_change_ctrl_state (struct nvme_ctrl*,int ) ;
 int nvme_reset_wq ;
 int queue_work (int ,int *) ;

int nvme_reset_ctrl(struct nvme_ctrl *ctrl)
{
 if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
  return -EBUSY;
 if (!queue_work(nvme_reset_wq, &ctrl->reset_work))
  return -EBUSY;
 return 0;
}
