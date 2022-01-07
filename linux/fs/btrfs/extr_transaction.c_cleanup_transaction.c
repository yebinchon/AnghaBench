
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_transaction {int num_writers; int writer_wait; int state; int list; } ;
struct btrfs_trans_handle {int type; int root; struct btrfs_transaction* transaction; int use_count; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int sb; int trans_lock; struct btrfs_transaction* running_transaction; } ;
struct TYPE_2__ {struct btrfs_trans_handle* journal_info; } ;


 int BUG_ON (int ) ;
 int TRANS_STATE_COMMIT_DOING ;
 int WARN_ON (int) ;
 int __TRANS_FREEZABLE ;
 int atomic_read (int *) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 int btrfs_cleanup_one_transaction (struct btrfs_transaction*,struct btrfs_fs_info*) ;
 int btrfs_put_transaction (struct btrfs_transaction*) ;
 int btrfs_scrub_cancel (struct btrfs_fs_info*) ;
 int btrfs_trans_handle_cachep ;
 TYPE_1__* current ;
 int kmem_cache_free (int ,struct btrfs_trans_handle*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int refcount_read (int *) ;
 int sb_end_intwrite (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_btrfs_transaction_commit (int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void cleanup_transaction(struct btrfs_trans_handle *trans, int err)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 struct btrfs_transaction *cur_trans = trans->transaction;

 WARN_ON(refcount_read(&trans->use_count) > 1);

 btrfs_abort_transaction(trans, err);

 spin_lock(&fs_info->trans_lock);






 BUG_ON(list_empty(&cur_trans->list));

 list_del_init(&cur_trans->list);
 if (cur_trans == fs_info->running_transaction) {
  cur_trans->state = TRANS_STATE_COMMIT_DOING;
  spin_unlock(&fs_info->trans_lock);
  wait_event(cur_trans->writer_wait,
      atomic_read(&cur_trans->num_writers) == 1);

  spin_lock(&fs_info->trans_lock);
 }
 spin_unlock(&fs_info->trans_lock);

 btrfs_cleanup_one_transaction(trans->transaction, fs_info);

 spin_lock(&fs_info->trans_lock);
 if (cur_trans == fs_info->running_transaction)
  fs_info->running_transaction = ((void*)0);
 spin_unlock(&fs_info->trans_lock);

 if (trans->type & __TRANS_FREEZABLE)
  sb_end_intwrite(fs_info->sb);
 btrfs_put_transaction(cur_trans);
 btrfs_put_transaction(cur_trans);

 trace_btrfs_transaction_commit(trans->root);

 if (current->journal_info == trans)
  current->journal_info = ((void*)0);
 btrfs_scrub_cancel(fs_info);

 kmem_cache_free(btrfs_trans_handle_cachep, trans);
}
