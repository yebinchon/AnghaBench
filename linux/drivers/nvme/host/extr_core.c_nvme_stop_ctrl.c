
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int fw_act_work; int async_event_work; } ;


 int cancel_work_sync (int *) ;
 int flush_work (int *) ;
 int nvme_mpath_stop (struct nvme_ctrl*) ;
 int nvme_stop_keep_alive (struct nvme_ctrl*) ;

void nvme_stop_ctrl(struct nvme_ctrl *ctrl)
{
 nvme_mpath_stop(ctrl);
 nvme_stop_keep_alive(ctrl);
 flush_work(&ctrl->async_event_work);
 cancel_work_sync(&ctrl->fw_act_work);
}
