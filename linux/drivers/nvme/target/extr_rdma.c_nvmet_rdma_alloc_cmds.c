
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_rdma_device {int dummy; } ;
struct nvmet_rdma_cmd {int dummy; } ;


 int EINVAL ;
 struct nvmet_rdma_cmd* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct nvmet_rdma_cmd* kcalloc (int,int,int ) ;
 int kfree (struct nvmet_rdma_cmd*) ;
 int nvmet_rdma_alloc_cmd (struct nvmet_rdma_device*,struct nvmet_rdma_cmd*,int) ;
 int nvmet_rdma_free_cmd (struct nvmet_rdma_device*,struct nvmet_rdma_cmd*,int) ;

__attribute__((used)) static struct nvmet_rdma_cmd *
nvmet_rdma_alloc_cmds(struct nvmet_rdma_device *ndev,
  int nr_cmds, bool admin)
{
 struct nvmet_rdma_cmd *cmds;
 int ret = -EINVAL, i;

 cmds = kcalloc(nr_cmds, sizeof(struct nvmet_rdma_cmd), GFP_KERNEL);
 if (!cmds)
  goto out;

 for (i = 0; i < nr_cmds; i++) {
  ret = nvmet_rdma_alloc_cmd(ndev, cmds + i, admin);
  if (ret)
   goto out_free;
 }

 return cmds;

out_free:
 while (--i >= 0)
  nvmet_rdma_free_cmd(ndev, cmds + i, admin);
 kfree(cmds);
out:
 return ERR_PTR(ret);
}
