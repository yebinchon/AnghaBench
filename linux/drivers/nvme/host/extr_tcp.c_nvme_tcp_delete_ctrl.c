
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int dummy; } ;


 int nvme_tcp_teardown_ctrl (struct nvme_ctrl*,int) ;

__attribute__((used)) static void nvme_tcp_delete_ctrl(struct nvme_ctrl *ctrl)
{
 nvme_tcp_teardown_ctrl(ctrl, 1);
}
