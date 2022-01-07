
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int cleanup_work_sem; int cleaner_kthread; int cleaner_mutex; struct btrfs_root* tree_root; } ;


 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* btrfs_join_transaction (struct btrfs_root*) ;
 int btrfs_run_delayed_iputs (struct btrfs_fs_info*) ;
 int down_write (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_write (int *) ;
 int wake_up_process (int ) ;

int btrfs_commit_super(struct btrfs_fs_info *fs_info)
{
 struct btrfs_root *root = fs_info->tree_root;
 struct btrfs_trans_handle *trans;

 mutex_lock(&fs_info->cleaner_mutex);
 btrfs_run_delayed_iputs(fs_info);
 mutex_unlock(&fs_info->cleaner_mutex);
 wake_up_process(fs_info->cleaner_kthread);


 down_write(&fs_info->cleanup_work_sem);
 up_write(&fs_info->cleanup_work_sem);

 trans = btrfs_join_transaction(root);
 if (IS_ERR(trans))
  return PTR_ERR(trans);
 return btrfs_commit_transaction(trans);
}
