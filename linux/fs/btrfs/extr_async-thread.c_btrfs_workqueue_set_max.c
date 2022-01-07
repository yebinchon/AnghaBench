
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_workqueue {TYPE_2__* high; TYPE_1__* normal; } ;
struct TYPE_4__ {int limit_active; } ;
struct TYPE_3__ {int limit_active; } ;



void btrfs_workqueue_set_max(struct btrfs_workqueue *wq, int limit_active)
{
 if (!wq)
  return;
 wq->normal->limit_active = limit_active;
 if (wq->high)
  wq->high->limit_active = limit_active;
}
