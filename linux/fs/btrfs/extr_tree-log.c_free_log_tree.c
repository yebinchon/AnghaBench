
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct walk_control {int free; int process_func; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int node; int dirty_log_pages; int fs_info; } ;


 int EXTENT_DIRTY ;
 int EXTENT_NEED_WAIT ;
 int EXTENT_NEW ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 int btrfs_handle_fs_error (int ,int,int *) ;
 int clear_extent_bits (int *,int ,int ,int) ;
 int free_extent_buffer (int ) ;
 int kfree (struct btrfs_root*) ;
 int process_one_buffer ;
 int walk_log_tree (struct btrfs_trans_handle*,struct btrfs_root*,struct walk_control*) ;

__attribute__((used)) static void free_log_tree(struct btrfs_trans_handle *trans,
     struct btrfs_root *log)
{
 int ret;
 struct walk_control wc = {
  .free = 1,
  .process_func = process_one_buffer
 };

 ret = walk_log_tree(trans, log, &wc);
 if (ret) {
  if (trans)
   btrfs_abort_transaction(trans, ret);
  else
   btrfs_handle_fs_error(log->fs_info, ret, ((void*)0));
 }

 clear_extent_bits(&log->dirty_log_pages, 0, (u64)-1,
     EXTENT_DIRTY | EXTENT_NEW | EXTENT_NEED_WAIT);
 free_extent_buffer(log->node);
 kfree(log);
}
