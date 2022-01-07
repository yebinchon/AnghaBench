
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_ctrl {TYPE_2__* ops; int reset_work; TYPE_1__* opts; int device; } ;
struct TYPE_4__ {int (* delete_ctrl ) (struct nvme_ctrl*) ;} ;
struct TYPE_3__ {int subsysnqn; } ;


 int dev_info (int ,char*,int ) ;
 int flush_work (int *) ;
 int nvme_put_ctrl (struct nvme_ctrl*) ;
 int nvme_remove_namespaces (struct nvme_ctrl*) ;
 int nvme_stop_ctrl (struct nvme_ctrl*) ;
 int nvme_uninit_ctrl (struct nvme_ctrl*) ;
 int stub1 (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_do_delete_ctrl(struct nvme_ctrl *ctrl)
{
 dev_info(ctrl->device,
   "Removing ctrl: NQN \"%s\"\n", ctrl->opts->subsysnqn);

 flush_work(&ctrl->reset_work);
 nvme_stop_ctrl(ctrl);
 nvme_remove_namespaces(ctrl);
 ctrl->ops->delete_ctrl(ctrl);
 nvme_uninit_ctrl(ctrl);
 nvme_put_ctrl(ctrl);
}
