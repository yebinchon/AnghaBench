
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_workqueue {TYPE_1__* normal; } ;
struct TYPE_2__ {int thresh; int pending; } ;


 int NO_THRESHOLD ;
 int atomic_read (int *) ;

bool btrfs_workqueue_normal_congested(const struct btrfs_workqueue *wq)
{






 if (wq->normal->thresh == NO_THRESHOLD)
  return 0;

 return atomic_read(&wq->normal->pending) > wq->normal->thresh * 2;
}
