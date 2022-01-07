
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {int dummy; } ;
struct btrfs_inode {scalar_t__ last_unlink_trans; int log_mutex; TYPE_1__* root; } ;
struct btrfs_fs_info {scalar_t__ last_trans_committed; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;


 int btrfs_set_log_full_commit (struct btrfs_trans_handle*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool btrfs_must_commit_transaction(struct btrfs_trans_handle *trans,
       struct btrfs_inode *inode)
{
 struct btrfs_fs_info *fs_info = inode->root->fs_info;
 bool ret = 0;

 mutex_lock(&inode->log_mutex);
 if (inode->last_unlink_trans > fs_info->last_trans_committed) {




  btrfs_set_log_full_commit(trans);
  ret = 1;
 }
 mutex_unlock(&inode->log_mutex);

 return ret;
}
