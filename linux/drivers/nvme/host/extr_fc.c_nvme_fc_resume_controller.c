
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int device; } ;
struct nvme_fc_ctrl {int connect_work; int cnum; TYPE_1__ ctrl; } ;





 int dev_info (int ,char*,int ) ;
 int nvme_wq ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void
nvme_fc_resume_controller(struct nvme_fc_ctrl *ctrl)
{
 switch (ctrl->ctrl.state) {
 case 129:
 case 130:




  dev_info(ctrl->ctrl.device,
   "NVME-FC{%d}: connectivity re-established. "
   "Attempting reconnect\n", ctrl->cnum);

  queue_delayed_work(nvme_wq, &ctrl->connect_work, 0);
  break;

 case 128:





  break;

 default:

  break;
 }
}
