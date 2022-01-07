
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __btrfs_workqueue {scalar_t__ thresh; int pending; } ;


 scalar_t__ NO_THRESHOLD ;
 int atomic_inc (int *) ;

__attribute__((used)) static inline void thresh_queue_hook(struct __btrfs_workqueue *wq)
{
 if (wq->thresh == NO_THRESHOLD)
  return;
 atomic_inc(&wq->pending);
}
