
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_transaction {scalar_t__ state; scalar_t__ aborted; int use_count; } ;
struct btrfs_fs_info {int trans_lock; int transaction_wait; struct btrfs_transaction* running_transaction; } ;


 scalar_t__ TRANS_STATE_UNBLOCKED ;
 int btrfs_put_transaction (struct btrfs_transaction*) ;
 scalar_t__ is_transaction_blocked (struct btrfs_transaction*) ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void wait_current_trans(struct btrfs_fs_info *fs_info)
{
 struct btrfs_transaction *cur_trans;

 spin_lock(&fs_info->trans_lock);
 cur_trans = fs_info->running_transaction;
 if (cur_trans && is_transaction_blocked(cur_trans)) {
  refcount_inc(&cur_trans->use_count);
  spin_unlock(&fs_info->trans_lock);

  wait_event(fs_info->transaction_wait,
      cur_trans->state >= TRANS_STATE_UNBLOCKED ||
      cur_trans->aborted);
  btrfs_put_transaction(cur_trans);
 } else {
  spin_unlock(&fs_info->trans_lock);
 }
}
