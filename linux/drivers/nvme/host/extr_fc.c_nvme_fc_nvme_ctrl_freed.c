
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int dummy; } ;
struct nvme_fc_ctrl {struct nvme_ctrl ctrl; } ;


 int WARN_ON (int) ;
 int nvme_fc_ctrl_put (struct nvme_fc_ctrl*) ;
 struct nvme_fc_ctrl* to_fc_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void
nvme_fc_nvme_ctrl_freed(struct nvme_ctrl *nctrl)
{
 struct nvme_fc_ctrl *ctrl = to_fc_ctrl(nctrl);

 WARN_ON(nctrl != &ctrl->ctrl);

 nvme_fc_ctrl_put(ctrl);
}
