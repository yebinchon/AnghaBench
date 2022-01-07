
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int dummy; } ;


 int nvme_loop_shutdown_ctrl (int ) ;
 int to_loop_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_loop_delete_ctrl_host(struct nvme_ctrl *ctrl)
{
 nvme_loop_shutdown_ctrl(to_loop_ctrl(ctrl));
}
