
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __btrfs_workqueue {int thresh; int count; int current_active; int normal_wq; int thres_lock; int limit_active; int pending; } ;


 int NO_THRESHOLD ;
 int atomic_dec (int *) ;
 long atomic_read (int *) ;
 int clamp_val (int,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int workqueue_set_max_active (int ,int) ;

__attribute__((used)) static inline void thresh_exec_hook(struct __btrfs_workqueue *wq)
{
 int new_current_active;
 long pending;
 int need_change = 0;

 if (wq->thresh == NO_THRESHOLD)
  return;

 atomic_dec(&wq->pending);
 spin_lock(&wq->thres_lock);




 wq->count++;
 wq->count %= (wq->thresh / 4);
 if (!wq->count)
  goto out;
 new_current_active = wq->current_active;





 pending = atomic_read(&wq->pending);
 if (pending > wq->thresh)
  new_current_active++;
 if (pending < wq->thresh / 2)
  new_current_active--;
 new_current_active = clamp_val(new_current_active, 1, wq->limit_active);
 if (new_current_active != wq->current_active) {
  need_change = 1;
  wq->current_active = new_current_active;
 }
out:
 spin_unlock(&wq->thres_lock);

 if (need_change) {
  workqueue_set_max_active(wq->normal_wq, wq->current_active);
 }
}
