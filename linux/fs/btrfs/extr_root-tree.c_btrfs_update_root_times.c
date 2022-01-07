
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; int tv_sec; } ;
struct btrfs_trans_handle {int transid; } ;
struct btrfs_root_item {int ctime; } ;
struct btrfs_root {int root_item_lock; struct btrfs_root_item root_item; } ;


 int btrfs_set_root_ctransid (struct btrfs_root_item*,int ) ;
 int btrfs_set_stack_timespec_nsec (int *,int ) ;
 int btrfs_set_stack_timespec_sec (int *,int ) ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_update_root_times(struct btrfs_trans_handle *trans,
        struct btrfs_root *root)
{
 struct btrfs_root_item *item = &root->root_item;
 struct timespec64 ct;

 ktime_get_real_ts64(&ct);
 spin_lock(&root->root_item_lock);
 btrfs_set_root_ctransid(item, trans->transid);
 btrfs_set_stack_timespec_sec(&item->ctime, ct.tv_sec);
 btrfs_set_stack_timespec_nsec(&item->ctime, ct.tv_nsec);
 spin_unlock(&root->root_item_lock);
}
