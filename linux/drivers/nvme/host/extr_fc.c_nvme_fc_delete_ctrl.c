
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_ctrl {int connect_work; int err_work; } ;
struct nvme_ctrl {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int nvme_fc_delete_association (struct nvme_fc_ctrl*) ;
 struct nvme_fc_ctrl* to_fc_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void
nvme_fc_delete_ctrl(struct nvme_ctrl *nctrl)
{
 struct nvme_fc_ctrl *ctrl = to_fc_ctrl(nctrl);

 cancel_work_sync(&ctrl->err_work);
 cancel_delayed_work_sync(&ctrl->connect_work);




 nvme_fc_delete_association(ctrl);
}
