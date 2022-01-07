
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvmet_ctrl {int lock; int csts; int cc; } ;


 int NVME_CSTS_SHST_CMPLT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nvmet_cc_en (int ) ;
 scalar_t__ nvmet_cc_shn (int ) ;
 int nvmet_clear_ctrl (struct nvmet_ctrl*) ;
 int nvmet_start_ctrl (struct nvmet_ctrl*) ;

void nvmet_update_cc(struct nvmet_ctrl *ctrl, u32 new)
{
 u32 old;

 mutex_lock(&ctrl->lock);
 old = ctrl->cc;
 ctrl->cc = new;

 if (nvmet_cc_en(new) && !nvmet_cc_en(old))
  nvmet_start_ctrl(ctrl);
 if (!nvmet_cc_en(new) && nvmet_cc_en(old))
  nvmet_clear_ctrl(ctrl);
 if (nvmet_cc_shn(new) && !nvmet_cc_shn(old)) {
  nvmet_clear_ctrl(ctrl);
  ctrl->csts |= NVME_CSTS_SHST_CMPLT;
 }
 if (!nvmet_cc_shn(new) && nvmet_cc_shn(old))
  ctrl->csts &= ~NVME_CSTS_SHST_CMPLT;
 mutex_unlock(&ctrl->lock);
}
