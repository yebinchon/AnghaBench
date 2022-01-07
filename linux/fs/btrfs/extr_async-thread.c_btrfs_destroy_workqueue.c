
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_workqueue {scalar_t__ normal; scalar_t__ high; } ;


 int __btrfs_destroy_workqueue (scalar_t__) ;
 int kfree (struct btrfs_workqueue*) ;

void btrfs_destroy_workqueue(struct btrfs_workqueue *wq)
{
 if (!wq)
  return;
 if (wq->high)
  __btrfs_destroy_workqueue(wq->high);
 __btrfs_destroy_workqueue(wq->normal);
 kfree(wq);
}
