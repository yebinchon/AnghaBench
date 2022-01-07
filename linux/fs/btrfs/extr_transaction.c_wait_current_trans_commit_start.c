
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_transaction {scalar_t__ state; scalar_t__ aborted; } ;
struct btrfs_fs_info {int transaction_blocked_wait; } ;


 scalar_t__ TRANS_STATE_COMMIT_START ;
 int wait_event (int ,int) ;

__attribute__((used)) static void wait_current_trans_commit_start(struct btrfs_fs_info *fs_info,
         struct btrfs_transaction *trans)
{
 wait_event(fs_info->transaction_blocked_wait,
     trans->state >= TRANS_STATE_COMMIT_START || trans->aborted);
}
