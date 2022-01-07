
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connect_q; } ;
struct nvme_loop_ctrl {struct nvme_loop_ctrl* queues; int tag_set; TYPE_1__ ctrl; int list; } ;
struct nvme_ctrl {int opts; scalar_t__ tagset; } ;


 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int kfree (struct nvme_loop_ctrl*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_loop_ctrl_mutex ;
 int nvmf_free_options (int ) ;
 struct nvme_loop_ctrl* to_loop_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_loop_free_ctrl(struct nvme_ctrl *nctrl)
{
 struct nvme_loop_ctrl *ctrl = to_loop_ctrl(nctrl);

 if (list_empty(&ctrl->list))
  goto free_ctrl;

 mutex_lock(&nvme_loop_ctrl_mutex);
 list_del(&ctrl->list);
 mutex_unlock(&nvme_loop_ctrl_mutex);

 if (nctrl->tagset) {
  blk_cleanup_queue(ctrl->ctrl.connect_q);
  blk_mq_free_tag_set(&ctrl->tag_set);
 }
 kfree(ctrl->queues);
 nvmf_free_options(nctrl->opts);
free_ctrl:
 kfree(ctrl);
}
