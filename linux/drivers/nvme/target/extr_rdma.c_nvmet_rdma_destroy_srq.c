
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_rdma_device {int srq; int srq_size; int srq_cmds; } ;


 int ib_destroy_srq (int ) ;
 int nvmet_rdma_free_cmds (struct nvmet_rdma_device*,int ,int ,int) ;

__attribute__((used)) static void nvmet_rdma_destroy_srq(struct nvmet_rdma_device *ndev)
{
 if (!ndev->srq)
  return;

 nvmet_rdma_free_cmds(ndev, ndev->srq_cmds, ndev->srq_size, 0);
 ib_destroy_srq(ndev->srq);
}
