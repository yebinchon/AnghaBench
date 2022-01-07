
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int * ana_log_buf; } ;


 int kfree (int *) ;

void nvme_mpath_uninit(struct nvme_ctrl *ctrl)
{
 kfree(ctrl->ana_log_buf);
 ctrl->ana_log_buf = ((void*)0);
}
