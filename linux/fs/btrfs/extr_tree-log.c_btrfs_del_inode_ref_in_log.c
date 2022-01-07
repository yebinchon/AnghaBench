
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {struct btrfs_root* log_root; } ;
struct btrfs_inode {int log_mutex; } ;


 int ENOENT ;
 int ENOSPC ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 int btrfs_del_inode_ref (struct btrfs_trans_handle*,struct btrfs_root*,char const*,int,int ,int ,int *) ;
 int btrfs_end_log_trans (struct btrfs_root*) ;
 int btrfs_ino (struct btrfs_inode*) ;
 int btrfs_set_log_full_commit (struct btrfs_trans_handle*) ;
 int inode_logged (struct btrfs_trans_handle*,struct btrfs_inode*) ;
 int join_running_log_trans (struct btrfs_root*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int btrfs_del_inode_ref_in_log(struct btrfs_trans_handle *trans,
          struct btrfs_root *root,
          const char *name, int name_len,
          struct btrfs_inode *inode, u64 dirid)
{
 struct btrfs_root *log;
 u64 index;
 int ret;

 if (!inode_logged(trans, inode))
  return 0;

 ret = join_running_log_trans(root);
 if (ret)
  return 0;
 log = root->log_root;
 mutex_lock(&inode->log_mutex);

 ret = btrfs_del_inode_ref(trans, log, name, name_len, btrfs_ino(inode),
      dirid, &index);
 mutex_unlock(&inode->log_mutex);
 if (ret == -ENOSPC) {
  btrfs_set_log_full_commit(trans);
  ret = 0;
 } else if (ret < 0 && ret != -ENOENT)
  btrfs_abort_transaction(trans, ret);
 btrfs_end_log_trans(root);

 return ret;
}
