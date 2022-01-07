
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int ana_work; int anatt_timer; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int nvme_ctrl_use_ana (struct nvme_ctrl*) ;

void nvme_mpath_stop(struct nvme_ctrl *ctrl)
{
 if (!nvme_ctrl_use_ana(ctrl))
  return;
 del_timer_sync(&ctrl->anatt_timer);
 cancel_work_sync(&ctrl->ana_work);
}
