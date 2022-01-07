
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ctrl {int csts; int lock; int fatal_err_work; } ;


 int NVME_CSTS_CFS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

void nvmet_ctrl_fatal_error(struct nvmet_ctrl *ctrl)
{
 mutex_lock(&ctrl->lock);
 if (!(ctrl->csts & NVME_CSTS_CFS)) {
  ctrl->csts |= NVME_CSTS_CFS;
  schedule_work(&ctrl->fatal_err_work);
 }
 mutex_unlock(&ctrl->lock);
}
