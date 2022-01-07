
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_ctrl {int ref; } ;


 int kref_put (int *,int ) ;
 int nvme_fc_ctrl_free ;

__attribute__((used)) static void
nvme_fc_ctrl_put(struct nvme_fc_ctrl *ctrl)
{
 kref_put(&ctrl->ref, nvme_fc_ctrl_free);
}
