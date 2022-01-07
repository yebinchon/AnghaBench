
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int device; } ;
struct nvme_fc_ctrl {TYPE_1__ ctrl; int cnum; } ;







 int dev_info (int ,char*,int ) ;
 int dev_warn (int ,char*,int ) ;
 int nvme_delete_ctrl (TYPE_1__*) ;
 int nvme_reset_ctrl (TYPE_1__*) ;

__attribute__((used)) static void
nvme_fc_ctrl_connectivity_loss(struct nvme_fc_ctrl *ctrl)
{
 dev_info(ctrl->ctrl.device,
  "NVME-FC{%d}: controller connectivity lost. Awaiting "
  "Reconnect", ctrl->cnum);

 switch (ctrl->ctrl.state) {
 case 129:
 case 130:







  if (nvme_reset_ctrl(&ctrl->ctrl)) {
   dev_warn(ctrl->ctrl.device,
    "NVME-FC{%d}: Couldn't schedule reset.\n",
    ctrl->cnum);
   nvme_delete_ctrl(&ctrl->ctrl);
  }
  break;

 case 132:







  break;

 case 128:






  break;

 case 131:
 default:

  break;
 }
}
