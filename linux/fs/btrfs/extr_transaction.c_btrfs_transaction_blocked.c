
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_transaction {int dummy; } ;
struct btrfs_fs_info {int trans_lock; struct btrfs_transaction* running_transaction; } ;


 int is_transaction_blocked (struct btrfs_transaction*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_transaction_blocked(struct btrfs_fs_info *info)
{
 struct btrfs_transaction *trans;
 int ret = 0;

 spin_lock(&info->trans_lock);
 trans = info->running_transaction;
 if (trans)
  ret = is_transaction_blocked(trans);
 spin_unlock(&info->trans_lock);
 return ret;
}
