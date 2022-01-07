
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ctrl {int kato; int ka_work; int csts; int cc; int lock; } ;


 int HZ ;
 int NVME_CSTS_CFS ;
 int NVME_CSTS_RDY ;
 scalar_t__ NVME_NVM_IOCQES ;
 scalar_t__ NVME_NVM_IOSQES ;
 int lockdep_assert_held (int *) ;
 int mod_delayed_work (int ,int *,int) ;
 scalar_t__ nvmet_cc_ams (int ) ;
 scalar_t__ nvmet_cc_css (int ) ;
 scalar_t__ nvmet_cc_iocqes (int ) ;
 scalar_t__ nvmet_cc_iosqes (int ) ;
 scalar_t__ nvmet_cc_mps (int ) ;
 int system_wq ;

__attribute__((used)) static void nvmet_start_ctrl(struct nvmet_ctrl *ctrl)
{
 lockdep_assert_held(&ctrl->lock);

 if (nvmet_cc_iosqes(ctrl->cc) != NVME_NVM_IOSQES ||
     nvmet_cc_iocqes(ctrl->cc) != NVME_NVM_IOCQES ||
     nvmet_cc_mps(ctrl->cc) != 0 ||
     nvmet_cc_ams(ctrl->cc) != 0 ||
     nvmet_cc_css(ctrl->cc) != 0) {
  ctrl->csts = NVME_CSTS_CFS;
  return;
 }

 ctrl->csts = NVME_CSTS_RDY;







 mod_delayed_work(system_wq, &ctrl->ka_work, ctrl->kato * HZ);
}
