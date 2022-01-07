
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_work {int flags; int (* func ) (struct btrfs_work*) ;struct __btrfs_workqueue* wq; scalar_t__ ordered_func; } ;
struct __btrfs_workqueue {int fs_info; } ;


 int WORK_DONE_BIT ;
 int run_ordered_work (struct __btrfs_workqueue*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct btrfs_work*) ;
 int thresh_exec_hook (struct __btrfs_workqueue*) ;
 int trace_btrfs_all_work_done (int ,void*) ;
 int trace_btrfs_work_sched (struct btrfs_work*) ;

__attribute__((used)) static void normal_work_helper(struct btrfs_work *work)
{
 struct __btrfs_workqueue *wq;
 void *wtag;
 int need_order = 0;
 if (work->ordered_func)
  need_order = 1;
 wq = work->wq;

 wtag = work;

 trace_btrfs_work_sched(work);
 thresh_exec_hook(wq);
 work->func(work);
 if (need_order) {
  set_bit(WORK_DONE_BIT, &work->flags);
  run_ordered_work(wq);
 }
 if (!need_order)
  trace_btrfs_all_work_done(wq->fs_info, wtag);
}
