
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_work {int normal_work; int ordered_list; scalar_t__ ordered_func; struct __btrfs_workqueue* wq; } ;
struct __btrfs_workqueue {int normal_wq; int list_lock; int ordered_list; } ;


 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int thresh_queue_hook (struct __btrfs_workqueue*) ;
 int trace_btrfs_work_queued (struct btrfs_work*) ;

__attribute__((used)) static inline void __btrfs_queue_work(struct __btrfs_workqueue *wq,
          struct btrfs_work *work)
{
 unsigned long flags;

 work->wq = wq;
 thresh_queue_hook(wq);
 if (work->ordered_func) {
  spin_lock_irqsave(&wq->list_lock, flags);
  list_add_tail(&work->ordered_list, &wq->ordered_list);
  spin_unlock_irqrestore(&wq->list_lock, flags);
 }
 trace_btrfs_work_queued(work);
 queue_work(wq->normal_wq, &work->normal_work);
}
