
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;
struct __btrfs_workqueue {int limit_active; int current_active; int thresh; int thres_lock; int list_lock; int ordered_list; void* normal_wq; int pending; struct btrfs_fs_info* fs_info; } ;


 int DFT_THRESHOLD ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NO_THRESHOLD ;
 unsigned int WQ_HIGHPRI ;
 void* alloc_workqueue (char*,unsigned int,int,char const*) ;
 int atomic_set (int *,int ) ;
 int kfree (struct __btrfs_workqueue*) ;
 struct __btrfs_workqueue* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int trace_btrfs_workqueue_alloc (struct __btrfs_workqueue*,char const*,unsigned int) ;

__attribute__((used)) static struct __btrfs_workqueue *
__btrfs_alloc_workqueue(struct btrfs_fs_info *fs_info, const char *name,
   unsigned int flags, int limit_active, int thresh)
{
 struct __btrfs_workqueue *ret = kzalloc(sizeof(*ret), GFP_KERNEL);

 if (!ret)
  return ((void*)0);

 ret->fs_info = fs_info;
 ret->limit_active = limit_active;
 atomic_set(&ret->pending, 0);
 if (thresh == 0)
  thresh = DFT_THRESHOLD;

 if (thresh < DFT_THRESHOLD) {
  ret->current_active = limit_active;
  ret->thresh = NO_THRESHOLD;
 } else {





  ret->current_active = 1;
  ret->thresh = thresh;
 }

 if (flags & WQ_HIGHPRI)
  ret->normal_wq = alloc_workqueue("btrfs-%s-high", flags,
       ret->current_active, name);
 else
  ret->normal_wq = alloc_workqueue("btrfs-%s", flags,
       ret->current_active, name);
 if (!ret->normal_wq) {
  kfree(ret);
  return ((void*)0);
 }

 INIT_LIST_HEAD(&ret->ordered_list);
 spin_lock_init(&ret->list_lock);
 spin_lock_init(&ret->thres_lock);
 trace_btrfs_workqueue_alloc(ret, name, flags & WQ_HIGHPRI);
 return ret;
}
