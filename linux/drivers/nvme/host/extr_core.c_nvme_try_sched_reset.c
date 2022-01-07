
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {scalar_t__ state; int reset_work; } ;


 int EBUSY ;
 scalar_t__ NVME_CTRL_RESETTING ;
 int nvme_reset_wq ;
 int queue_work (int ,int *) ;

int nvme_try_sched_reset(struct nvme_ctrl *ctrl)
{
 if (ctrl->state != NVME_CTRL_RESETTING)
  return -EBUSY;
 if (!queue_work(nvme_reset_wq, &ctrl->reset_work))
  return -EBUSY;
 return 0;
}
