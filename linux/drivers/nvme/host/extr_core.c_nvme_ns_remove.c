
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nvme_ns {TYPE_3__* ctrl; int list; TYPE_4__* disk; int queue; TYPE_2__* head; int siblings; int fault_inject; int flags; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int namespaces_rwsem; TYPE_1__* subsys; } ;
struct TYPE_8__ {int srcu; } ;
struct TYPE_7__ {int lock; } ;


 int GENHD_FL_UP ;
 int NVME_NS_REMOVING ;
 int blk_cleanup_queue (int ) ;
 scalar_t__ blk_get_integrity (TYPE_4__*) ;
 int blk_integrity_unregister (TYPE_4__*) ;
 int del_gendisk (TYPE_4__*) ;
 int down_write (int *) ;
 int list_del_init (int *) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvme_fault_inject_fini (int *) ;
 int nvme_mpath_check_last_path (struct nvme_ns*) ;
 int nvme_mpath_clear_current_path (struct nvme_ns*) ;
 int nvme_put_ns (struct nvme_ns*) ;
 int synchronize_rcu () ;
 int synchronize_srcu (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int up_write (int *) ;

__attribute__((used)) static void nvme_ns_remove(struct nvme_ns *ns)
{
 if (test_and_set_bit(NVME_NS_REMOVING, &ns->flags))
  return;

 nvme_fault_inject_fini(&ns->fault_inject);

 mutex_lock(&ns->ctrl->subsys->lock);
 list_del_rcu(&ns->siblings);
 mutex_unlock(&ns->ctrl->subsys->lock);
 synchronize_rcu();
 nvme_mpath_clear_current_path(ns);
 synchronize_srcu(&ns->head->srcu);

 if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
  del_gendisk(ns->disk);
  blk_cleanup_queue(ns->queue);
  if (blk_get_integrity(ns->disk))
   blk_integrity_unregister(ns->disk);
 }

 down_write(&ns->ctrl->namespaces_rwsem);
 list_del_init(&ns->list);
 up_write(&ns->ctrl->namespaces_rwsem);

 nvme_mpath_check_last_path(ns);
 nvme_put_ns(ns);
}
