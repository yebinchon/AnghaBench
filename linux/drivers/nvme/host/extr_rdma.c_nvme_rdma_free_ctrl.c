
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_ctrl {struct nvme_rdma_ctrl* queues; int list; } ;
struct nvme_ctrl {int opts; } ;


 int kfree (struct nvme_rdma_ctrl*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_rdma_ctrl_mutex ;
 int nvmf_free_options (int ) ;
 struct nvme_rdma_ctrl* to_rdma_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_rdma_free_ctrl(struct nvme_ctrl *nctrl)
{
 struct nvme_rdma_ctrl *ctrl = to_rdma_ctrl(nctrl);

 if (list_empty(&ctrl->list))
  goto free_ctrl;

 mutex_lock(&nvme_rdma_ctrl_mutex);
 list_del(&ctrl->list);
 mutex_unlock(&nvme_rdma_ctrl_mutex);

 nvmf_free_options(nctrl->opts);
free_ctrl:
 kfree(ctrl->queues);
 kfree(ctrl);
}
