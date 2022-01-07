
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns_ids {int dummy; } ;
struct nvme_ns_head {int list; int ids; } ;
struct nvme_ns {struct nvme_ns_head* head; int siblings; struct nvme_ctrl* ctrl; } ;
struct nvme_id_ns {int nmic; } ;
struct nvme_ctrl {TYPE_1__* subsys; int device; } ;
struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct nvme_ns_head*) ;
 int PTR_ERR (struct nvme_ns_head*) ;
 struct nvme_ns_head* __nvme_find_ns_head (TYPE_1__*,unsigned int) ;
 int blk_status_to_errno (int ) ;
 int dev_err (int ,char*,unsigned int) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nvme_ns_head* nvme_alloc_ns_head (struct nvme_ctrl*,unsigned int,struct nvme_id_ns*) ;
 int nvme_error_status (int) ;
 int nvme_ns_ids_equal (int *,struct nvme_ns_ids*) ;
 int nvme_report_ns_ids (struct nvme_ctrl*,unsigned int,struct nvme_id_ns*,struct nvme_ns_ids*) ;

__attribute__((used)) static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
  struct nvme_id_ns *id)
{
 struct nvme_ctrl *ctrl = ns->ctrl;
 bool is_shared = id->nmic & (1 << 0);
 struct nvme_ns_head *head = ((void*)0);
 int ret = 0;

 mutex_lock(&ctrl->subsys->lock);
 if (is_shared)
  head = __nvme_find_ns_head(ctrl->subsys, nsid);
 if (!head) {
  head = nvme_alloc_ns_head(ctrl, nsid, id);
  if (IS_ERR(head)) {
   ret = PTR_ERR(head);
   goto out_unlock;
  }
 } else {
  struct nvme_ns_ids ids;

  ret = nvme_report_ns_ids(ctrl, nsid, id, &ids);
  if (ret)
   goto out_unlock;

  if (!nvme_ns_ids_equal(&head->ids, &ids)) {
   dev_err(ctrl->device,
    "IDs don't match for shared namespace %d\n",
     nsid);
   ret = -EINVAL;
   goto out_unlock;
  }
 }

 list_add_tail(&ns->siblings, &head->list);
 ns->head = head;

out_unlock:
 mutex_unlock(&ctrl->subsys->lock);
 if (ret > 0)
  ret = blk_status_to_errno(nvme_error_status(ret));
 return ret;
}
