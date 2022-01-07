
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_workqueue {struct __btrfs_workqueue* normal; struct __btrfs_workqueue* high; } ;
struct btrfs_work {int flags; } ;
struct __btrfs_workqueue {int dummy; } ;


 int WORK_HIGH_PRIO_BIT ;
 int __btrfs_queue_work (struct __btrfs_workqueue*,struct btrfs_work*) ;
 scalar_t__ test_bit (int ,int *) ;

void btrfs_queue_work(struct btrfs_workqueue *wq,
        struct btrfs_work *work)
{
 struct __btrfs_workqueue *dest_wq;

 if (test_bit(WORK_HIGH_PRIO_BIT, &work->flags) && wq->high)
  dest_wq = wq->high;
 else
  dest_wq = wq->normal;
 __btrfs_queue_work(dest_wq, work);
}
