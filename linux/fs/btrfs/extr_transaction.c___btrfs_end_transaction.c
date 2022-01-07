
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_transaction {int writer_wait; int num_writers; int state; } ;
struct btrfs_trans_handle {int type; scalar_t__ aborted; int * block_rsv; int * orig_rsv; int use_count; struct btrfs_transaction* transaction; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int transaction_kthread; int fs_state; struct btrfs_transaction* running_transaction; int sb; } ;
struct TYPE_2__ {struct btrfs_trans_handle* journal_info; } ;


 int BTRFS_FS_STATE_ERROR ;
 int EIO ;
 scalar_t__ READ_ONCE (int ) ;
 int TRANS_JOIN_NOLOCK ;
 scalar_t__ TRANS_STATE_BLOCKED ;
 int WARN_ON (int) ;
 int __TRANS_FREEZABLE ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 int btrfs_create_pending_block_groups (struct btrfs_trans_handle*) ;
 int btrfs_put_transaction (struct btrfs_transaction*) ;
 int btrfs_run_delayed_iputs (struct btrfs_fs_info*) ;
 int btrfs_trans_handle_cachep ;
 int btrfs_trans_release_chunk_metadata (struct btrfs_trans_handle*) ;
 int btrfs_trans_release_metadata (struct btrfs_trans_handle*) ;
 int cond_wake_up (int *) ;
 TYPE_1__* current ;
 int extwriter_counter_dec (struct btrfs_transaction*,int) ;
 int kmem_cache_free (int ,struct btrfs_trans_handle*) ;
 int refcount_dec (int *) ;
 int refcount_read (int *) ;
 int sb_end_intwrite (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int __btrfs_end_transaction(struct btrfs_trans_handle *trans,
       int throttle)
{
 struct btrfs_fs_info *info = trans->fs_info;
 struct btrfs_transaction *cur_trans = trans->transaction;
 int lock = (trans->type != TRANS_JOIN_NOLOCK);
 int err = 0;

 if (refcount_read(&trans->use_count) > 1) {
  refcount_dec(&trans->use_count);
  trans->block_rsv = trans->orig_rsv;
  return 0;
 }

 btrfs_trans_release_metadata(trans);
 trans->block_rsv = ((void*)0);

 btrfs_create_pending_block_groups(trans);

 btrfs_trans_release_chunk_metadata(trans);

 if (lock && READ_ONCE(cur_trans->state) == TRANS_STATE_BLOCKED) {
  if (throttle)
   return btrfs_commit_transaction(trans);
  else
   wake_up_process(info->transaction_kthread);
 }

 if (trans->type & __TRANS_FREEZABLE)
  sb_end_intwrite(info->sb);

 WARN_ON(cur_trans != info->running_transaction);
 WARN_ON(atomic_read(&cur_trans->num_writers) < 1);
 atomic_dec(&cur_trans->num_writers);
 extwriter_counter_dec(cur_trans, trans->type);

 cond_wake_up(&cur_trans->writer_wait);
 btrfs_put_transaction(cur_trans);

 if (current->journal_info == trans)
  current->journal_info = ((void*)0);

 if (throttle)
  btrfs_run_delayed_iputs(info);

 if (trans->aborted ||
     test_bit(BTRFS_FS_STATE_ERROR, &info->fs_state)) {
  wake_up_process(info->transaction_kthread);
  err = -EIO;
 }

 kmem_cache_free(btrfs_trans_handle_cachep, trans);
 return err;
}
