
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_rdma_device {int dummy; } ;
struct nvmet_rdma_cmd {int dummy; } ;


 int kfree (struct nvmet_rdma_cmd*) ;
 int nvmet_rdma_free_cmd (struct nvmet_rdma_device*,struct nvmet_rdma_cmd*,int) ;

__attribute__((used)) static void nvmet_rdma_free_cmds(struct nvmet_rdma_device *ndev,
  struct nvmet_rdma_cmd *cmds, int nr_cmds, bool admin)
{
 int i;

 for (i = 0; i < nr_cmds; i++)
  nvmet_rdma_free_cmd(ndev, cmds + i, admin);
 kfree(cmds);
}
