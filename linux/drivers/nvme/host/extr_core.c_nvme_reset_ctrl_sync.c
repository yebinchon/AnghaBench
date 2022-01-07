
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {scalar_t__ state; int reset_work; } ;


 int ENETRESET ;
 scalar_t__ NVME_CTRL_LIVE ;
 int flush_work (int *) ;
 int nvme_reset_ctrl (struct nvme_ctrl*) ;

int nvme_reset_ctrl_sync(struct nvme_ctrl *ctrl)
{
 int ret;

 ret = nvme_reset_ctrl(ctrl);
 if (!ret) {
  flush_work(&ctrl->reset_work);
  if (ctrl->state != NVME_CTRL_LIVE)
   ret = -ENETRESET;
 }

 return ret;
}
