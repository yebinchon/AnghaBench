
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int dummy; } ;


 int nvme_rdma_shutdown_ctrl (int ,int) ;
 int to_rdma_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_rdma_delete_ctrl(struct nvme_ctrl *ctrl)
{
 nvme_rdma_shutdown_ctrl(to_rdma_ctrl(ctrl), 1);
}
