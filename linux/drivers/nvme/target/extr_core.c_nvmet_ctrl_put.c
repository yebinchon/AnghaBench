
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ctrl {int ref; } ;


 int kref_put (int *,int ) ;
 int nvmet_ctrl_free ;

void nvmet_ctrl_put(struct nvmet_ctrl *ctrl)
{
 kref_put(&ctrl->ref, nvmet_ctrl_free);
}
