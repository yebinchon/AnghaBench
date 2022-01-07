
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_ctrl {struct nvme_tcp_ctrl* queues; int list; } ;
struct nvme_ctrl {int opts; } ;


 int kfree (struct nvme_tcp_ctrl*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_tcp_ctrl_mutex ;
 int nvmf_free_options (int ) ;
 struct nvme_tcp_ctrl* to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_free_ctrl(struct nvme_ctrl *nctrl)
{
 struct nvme_tcp_ctrl *ctrl = to_tcp_ctrl(nctrl);

 if (list_empty(&ctrl->list))
  goto free_ctrl;

 mutex_lock(&nvme_tcp_ctrl_mutex);
 list_del(&ctrl->list);
 mutex_unlock(&nvme_tcp_ctrl_mutex);

 nvmf_free_options(nctrl->opts);
free_ctrl:
 kfree(ctrl->queues);
 kfree(ctrl);
}
