
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int delayed_workers; struct btrfs_delayed_root* delayed_root; } ;
struct btrfs_delayed_root {int wait; int items_seq; int items; } ;


 int BTRFS_DELAYED_BACKGROUND ;
 int BTRFS_DELAYED_BATCH ;
 int BTRFS_DELAYED_WRITEBACK ;
 int atomic_read (int *) ;
 scalar_t__ btrfs_workqueue_normal_congested (int ) ;
 int btrfs_wq_run_delayed_node (struct btrfs_delayed_root*,struct btrfs_fs_info*,int ) ;
 int could_end_wait (struct btrfs_delayed_root*,int) ;
 int wait_event_interruptible (int ,int ) ;

void btrfs_balance_delayed_items(struct btrfs_fs_info *fs_info)
{
 struct btrfs_delayed_root *delayed_root = fs_info->delayed_root;

 if ((atomic_read(&delayed_root->items) < BTRFS_DELAYED_BACKGROUND) ||
  btrfs_workqueue_normal_congested(fs_info->delayed_workers))
  return;

 if (atomic_read(&delayed_root->items) >= BTRFS_DELAYED_WRITEBACK) {
  int seq;
  int ret;

  seq = atomic_read(&delayed_root->items_seq);

  ret = btrfs_wq_run_delayed_node(delayed_root, fs_info, 0);
  if (ret)
   return;

  wait_event_interruptible(delayed_root->wait,
      could_end_wait(delayed_root, seq));
  return;
 }

 btrfs_wq_run_delayed_node(delayed_root, fs_info, BTRFS_DELAYED_BATCH);
}
