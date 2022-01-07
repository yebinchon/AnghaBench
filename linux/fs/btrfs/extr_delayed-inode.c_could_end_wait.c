
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_delayed_root {int items; int items_seq; } ;


 int BTRFS_DELAYED_BACKGROUND ;
 int BTRFS_DELAYED_BATCH ;
 int atomic_read (int *) ;

__attribute__((used)) static int could_end_wait(struct btrfs_delayed_root *delayed_root, int seq)
{
 int val = atomic_read(&delayed_root->items_seq);

 if (val < seq || val >= seq + BTRFS_DELAYED_BATCH)
  return 1;

 if (atomic_read(&delayed_root->items) < BTRFS_DELAYED_BACKGROUND)
  return 1;

 return 0;
}
