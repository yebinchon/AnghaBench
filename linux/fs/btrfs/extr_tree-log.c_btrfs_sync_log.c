
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_root {int log_transid_committed; int log_transid; int last_log_commit; int * log_commit_wait; int log_mutex; int * log_commit; TYPE_1__* node; int dirty_log_pages; int log_writer_wait; int log_writers; int * log_ctxs; int log_batch; scalar_t__ log_start_pid; int root_item; int state; struct btrfs_root* log_root; struct btrfs_fs_info* fs_info; } ;
struct btrfs_log_ctx {int log_transid; int log_ret; int list; } ;
struct btrfs_fs_info {int super_for_commit; struct btrfs_root* log_root_tree; } ;
struct blk_plug {int dummy; } ;
typedef int new_root_item ;
struct TYPE_3__ {int start; } ;


 int ASSERT (int) ;
 int BTRFS_ROOT_MULTI_LOG_TASKS ;
 int EAGAIN ;
 int ENOSPC ;
 int EXTENT_DIRTY ;
 int EXTENT_NEW ;
 int SSD ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 int btrfs_header_level (TYPE_1__*) ;
 int btrfs_init_log_ctx (struct btrfs_log_ctx*,int *) ;
 scalar_t__ btrfs_need_log_full_commit (struct btrfs_trans_handle*) ;
 int btrfs_remove_all_log_ctxs (struct btrfs_root*,int,int) ;
 int btrfs_set_log_full_commit (struct btrfs_trans_handle*) ;
 int btrfs_set_root_node (int *,TYPE_1__*) ;
 int btrfs_set_super_log_root (int ,int ) ;
 int btrfs_set_super_log_root_level (int ,int ) ;
 int btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int btrfs_wait_tree_log_extents (struct btrfs_root*,int) ;
 int btrfs_write_marked_extents (struct btrfs_fs_info*,int *,int) ;
 int cond_wake_up (int *) ;
 int cond_wake_up_nomb (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int memcpy (struct btrfs_root_item*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ test_bit (int ,int *) ;
 int update_log_root (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_root_item*) ;
 int wait_for_writer (struct btrfs_root*) ;
 int wait_log_commit (struct btrfs_root*,int) ;
 int write_all_supers (struct btrfs_fs_info*,int) ;

int btrfs_sync_log(struct btrfs_trans_handle *trans,
     struct btrfs_root *root, struct btrfs_log_ctx *ctx)
{
 int index1;
 int index2;
 int mark;
 int ret;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_root *log = root->log_root;
 struct btrfs_root *log_root_tree = fs_info->log_root_tree;
 struct btrfs_root_item new_root_item;
 int log_transid = 0;
 struct btrfs_log_ctx root_log_ctx;
 struct blk_plug plug;

 mutex_lock(&root->log_mutex);
 log_transid = ctx->log_transid;
 if (root->log_transid_committed >= log_transid) {
  mutex_unlock(&root->log_mutex);
  return ctx->log_ret;
 }

 index1 = log_transid % 2;
 if (atomic_read(&root->log_commit[index1])) {
  wait_log_commit(root, log_transid);
  mutex_unlock(&root->log_mutex);
  return ctx->log_ret;
 }
 ASSERT(log_transid == root->log_transid);
 atomic_set(&root->log_commit[index1], 1);


 if (atomic_read(&root->log_commit[(index1 + 1) % 2]))
  wait_log_commit(root, log_transid - 1);

 while (1) {
  int batch = atomic_read(&root->log_batch);

  if (!btrfs_test_opt(fs_info, SSD) &&
      test_bit(BTRFS_ROOT_MULTI_LOG_TASKS, &root->state)) {
   mutex_unlock(&root->log_mutex);
   schedule_timeout_uninterruptible(1);
   mutex_lock(&root->log_mutex);
  }
  wait_for_writer(root);
  if (batch == atomic_read(&root->log_batch))
   break;
 }


 if (btrfs_need_log_full_commit(trans)) {
  ret = -EAGAIN;
  mutex_unlock(&root->log_mutex);
  goto out;
 }

 if (log_transid % 2 == 0)
  mark = EXTENT_DIRTY;
 else
  mark = EXTENT_NEW;




 blk_start_plug(&plug);
 ret = btrfs_write_marked_extents(fs_info, &log->dirty_log_pages, mark);
 if (ret) {
  blk_finish_plug(&plug);
  btrfs_abort_transaction(trans, ret);
  btrfs_set_log_full_commit(trans);
  mutex_unlock(&root->log_mutex);
  goto out;
 }
 btrfs_set_root_node(&log->root_item, log->node);
 memcpy(&new_root_item, &log->root_item, sizeof(new_root_item));

 root->log_transid++;
 log->log_transid = root->log_transid;
 root->log_start_pid = 0;





 mutex_unlock(&root->log_mutex);

 btrfs_init_log_ctx(&root_log_ctx, ((void*)0));

 mutex_lock(&log_root_tree->log_mutex);
 atomic_inc(&log_root_tree->log_batch);
 atomic_inc(&log_root_tree->log_writers);

 index2 = log_root_tree->log_transid % 2;
 list_add_tail(&root_log_ctx.list, &log_root_tree->log_ctxs[index2]);
 root_log_ctx.log_transid = log_root_tree->log_transid;

 mutex_unlock(&log_root_tree->log_mutex);

 mutex_lock(&log_root_tree->log_mutex);






 ret = update_log_root(trans, log, &new_root_item);

 if (atomic_dec_and_test(&log_root_tree->log_writers)) {

  cond_wake_up_nomb(&log_root_tree->log_writer_wait);
 }

 if (ret) {
  if (!list_empty(&root_log_ctx.list))
   list_del_init(&root_log_ctx.list);

  blk_finish_plug(&plug);
  btrfs_set_log_full_commit(trans);

  if (ret != -ENOSPC) {
   btrfs_abort_transaction(trans, ret);
   mutex_unlock(&log_root_tree->log_mutex);
   goto out;
  }
  btrfs_wait_tree_log_extents(log, mark);
  mutex_unlock(&log_root_tree->log_mutex);
  ret = -EAGAIN;
  goto out;
 }

 if (log_root_tree->log_transid_committed >= root_log_ctx.log_transid) {
  blk_finish_plug(&plug);
  list_del_init(&root_log_ctx.list);
  mutex_unlock(&log_root_tree->log_mutex);
  ret = root_log_ctx.log_ret;
  goto out;
 }

 index2 = root_log_ctx.log_transid % 2;
 if (atomic_read(&log_root_tree->log_commit[index2])) {
  blk_finish_plug(&plug);
  ret = btrfs_wait_tree_log_extents(log, mark);
  wait_log_commit(log_root_tree,
    root_log_ctx.log_transid);
  mutex_unlock(&log_root_tree->log_mutex);
  if (!ret)
   ret = root_log_ctx.log_ret;
  goto out;
 }
 ASSERT(root_log_ctx.log_transid == log_root_tree->log_transid);
 atomic_set(&log_root_tree->log_commit[index2], 1);

 if (atomic_read(&log_root_tree->log_commit[(index2 + 1) % 2])) {
  wait_log_commit(log_root_tree,
    root_log_ctx.log_transid - 1);
 }

 wait_for_writer(log_root_tree);





 if (btrfs_need_log_full_commit(trans)) {
  blk_finish_plug(&plug);
  btrfs_wait_tree_log_extents(log, mark);
  mutex_unlock(&log_root_tree->log_mutex);
  ret = -EAGAIN;
  goto out_wake_log_root;
 }

 ret = btrfs_write_marked_extents(fs_info,
      &log_root_tree->dirty_log_pages,
      EXTENT_DIRTY | EXTENT_NEW);
 blk_finish_plug(&plug);
 if (ret) {
  btrfs_set_log_full_commit(trans);
  btrfs_abort_transaction(trans, ret);
  mutex_unlock(&log_root_tree->log_mutex);
  goto out_wake_log_root;
 }
 ret = btrfs_wait_tree_log_extents(log, mark);
 if (!ret)
  ret = btrfs_wait_tree_log_extents(log_root_tree,
        EXTENT_NEW | EXTENT_DIRTY);
 if (ret) {
  btrfs_set_log_full_commit(trans);
  mutex_unlock(&log_root_tree->log_mutex);
  goto out_wake_log_root;
 }

 btrfs_set_super_log_root(fs_info->super_for_commit,
     log_root_tree->node->start);
 btrfs_set_super_log_root_level(fs_info->super_for_commit,
           btrfs_header_level(log_root_tree->node));

 log_root_tree->log_transid++;
 mutex_unlock(&log_root_tree->log_mutex);
 ret = write_all_supers(fs_info, 1);
 if (ret) {
  btrfs_set_log_full_commit(trans);
  btrfs_abort_transaction(trans, ret);
  goto out_wake_log_root;
 }

 mutex_lock(&root->log_mutex);
 if (root->last_log_commit < log_transid)
  root->last_log_commit = log_transid;
 mutex_unlock(&root->log_mutex);

out_wake_log_root:
 mutex_lock(&log_root_tree->log_mutex);
 btrfs_remove_all_log_ctxs(log_root_tree, index2, ret);

 log_root_tree->log_transid_committed++;
 atomic_set(&log_root_tree->log_commit[index2], 0);
 mutex_unlock(&log_root_tree->log_mutex);






 cond_wake_up(&log_root_tree->log_commit_wait[index2]);
out:
 mutex_lock(&root->log_mutex);
 btrfs_remove_all_log_ctxs(root, index1, ret);
 root->log_transid_committed++;
 atomic_set(&root->log_commit[index1], 0);
 mutex_unlock(&root->log_mutex);






 cond_wake_up(&root->log_commit_wait[index1]);
 return ret;
}
