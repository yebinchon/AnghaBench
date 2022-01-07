
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int dummy; } ;


 int EBUSY ;
 int NVME_CTRL_DELETING ;
 int nvme_change_ctrl_state (struct nvme_ctrl*,int ) ;
 int nvme_do_delete_ctrl (struct nvme_ctrl*) ;
 int nvme_get_ctrl (struct nvme_ctrl*) ;
 int nvme_put_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static int nvme_delete_ctrl_sync(struct nvme_ctrl *ctrl)
{
 int ret = 0;





 nvme_get_ctrl(ctrl);
 if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_DELETING))
  ret = -EBUSY;
 if (!ret)
  nvme_do_delete_ctrl(ctrl);
 nvme_put_ctrl(ctrl);
 return ret;
}
