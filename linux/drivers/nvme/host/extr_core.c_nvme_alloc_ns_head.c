
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns_head {int instance; unsigned int ns_id; int srcu; int entry; int ids; int ref; TYPE_1__* subsys; int list; } ;
struct nvme_ns {int dummy; } ;
struct nvme_id_ns {int dummy; } ;
struct nvme_ctrl {TYPE_1__* subsys; int device; } ;
struct TYPE_2__ {int ns_ida; int ref; int nsheads; } ;


 int ENOMEM ;
 struct nvme_ns_head* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __nvme_check_ids (TYPE_1__*,struct nvme_ns_head*) ;
 int blk_status_to_errno (int ) ;
 int cleanup_srcu_struct (int *) ;
 int dev_err (int ,char*,unsigned int) ;
 int ida_simple_get (int *,int,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int init_srcu_struct (int *) ;
 int kfree (struct nvme_ns_head*) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct nvme_ns_head* kzalloc (size_t,int ) ;
 int list_add_tail (int *,int *) ;
 int num_possible_nodes () ;
 int nvme_error_status (int) ;
 int nvme_mpath_alloc_disk (struct nvme_ctrl*,struct nvme_ns_head*) ;
 int nvme_report_ns_ids (struct nvme_ctrl*,unsigned int,struct nvme_id_ns*,int *) ;

__attribute__((used)) static struct nvme_ns_head *nvme_alloc_ns_head(struct nvme_ctrl *ctrl,
  unsigned nsid, struct nvme_id_ns *id)
{
 struct nvme_ns_head *head;
 size_t size = sizeof(*head);
 int ret = -ENOMEM;





 head = kzalloc(size, GFP_KERNEL);
 if (!head)
  goto out;
 ret = ida_simple_get(&ctrl->subsys->ns_ida, 1, 0, GFP_KERNEL);
 if (ret < 0)
  goto out_free_head;
 head->instance = ret;
 INIT_LIST_HEAD(&head->list);
 ret = init_srcu_struct(&head->srcu);
 if (ret)
  goto out_ida_remove;
 head->subsys = ctrl->subsys;
 head->ns_id = nsid;
 kref_init(&head->ref);

 ret = nvme_report_ns_ids(ctrl, nsid, id, &head->ids);
 if (ret)
  goto out_cleanup_srcu;

 ret = __nvme_check_ids(ctrl->subsys, head);
 if (ret) {
  dev_err(ctrl->device,
   "duplicate IDs for nsid %d\n", nsid);
  goto out_cleanup_srcu;
 }

 ret = nvme_mpath_alloc_disk(ctrl, head);
 if (ret)
  goto out_cleanup_srcu;

 list_add_tail(&head->entry, &ctrl->subsys->nsheads);

 kref_get(&ctrl->subsys->ref);

 return head;
out_cleanup_srcu:
 cleanup_srcu_struct(&head->srcu);
out_ida_remove:
 ida_simple_remove(&ctrl->subsys->ns_ida, head->instance);
out_free_head:
 kfree(head);
out:
 if (ret > 0)
  ret = blk_status_to_errno(nvme_error_status(ret));
 return ERR_PTR(ret);
}
