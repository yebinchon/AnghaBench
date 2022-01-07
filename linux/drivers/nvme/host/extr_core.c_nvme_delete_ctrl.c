
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int delete_work; } ;


 int EBUSY ;
 int NVME_CTRL_DELETING ;
 int nvme_change_ctrl_state (struct nvme_ctrl*,int ) ;
 int nvme_delete_wq ;
 int queue_work (int ,int *) ;

int nvme_delete_ctrl(struct nvme_ctrl *ctrl)
{
 if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_DELETING))
  return -EBUSY;
 if (!queue_work(nvme_delete_wq, &ctrl->delete_work))
  return -EBUSY;
 return 0;
}
