
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __btrfs_workqueue {int normal_wq; } ;


 int destroy_workqueue (int ) ;
 int kfree (struct __btrfs_workqueue*) ;
 int trace_btrfs_workqueue_destroy (struct __btrfs_workqueue*) ;

__attribute__((used)) static inline void
__btrfs_destroy_workqueue(struct __btrfs_workqueue *wq)
{
 destroy_workqueue(wq->normal_wq);
 trace_btrfs_workqueue_destroy(wq);
 kfree(wq);
}
