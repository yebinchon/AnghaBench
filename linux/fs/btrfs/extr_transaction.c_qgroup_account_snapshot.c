
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {int transaction; } ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_qgroup_inherit {int dummy; } ;
struct btrfs_fs_info {int tree_log_mutex; int flags; } ;


 int BTRFS_FS_QUOTA_ENABLED ;
 int btrfs_handle_fs_error (struct btrfs_fs_info*,int,char*) ;
 int btrfs_qgroup_account_extents (struct btrfs_trans_handle*) ;
 int btrfs_qgroup_inherit (struct btrfs_trans_handle*,int ,int ,struct btrfs_qgroup_inherit*) ;
 int btrfs_write_and_wait_transaction (struct btrfs_trans_handle*) ;
 int commit_cowonly_roots (struct btrfs_trans_handle*) ;
 int commit_fs_roots (struct btrfs_trans_handle*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int record_root_in_trans (struct btrfs_trans_handle*,struct btrfs_root*,int) ;
 int switch_commit_roots (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qgroup_account_snapshot(struct btrfs_trans_handle *trans,
       struct btrfs_root *src,
       struct btrfs_root *parent,
       struct btrfs_qgroup_inherit *inherit,
       u64 dst_objectid)
{
 struct btrfs_fs_info *fs_info = src->fs_info;
 int ret;






 if (!test_bit(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags))
  return 0;







 record_root_in_trans(trans, src, 1);





 mutex_lock(&fs_info->tree_log_mutex);

 ret = commit_fs_roots(trans);
 if (ret)
  goto out;
 ret = btrfs_qgroup_account_extents(trans);
 if (ret < 0)
  goto out;


 ret = btrfs_qgroup_inherit(trans, src->root_key.objectid, dst_objectid,
       inherit);
 if (ret < 0)
  goto out;
 ret = commit_cowonly_roots(trans);
 if (ret)
  goto out;
 switch_commit_roots(trans->transaction);
 ret = btrfs_write_and_wait_transaction(trans);
 if (ret)
  btrfs_handle_fs_error(fs_info, ret,
   "Error while writing out transaction for qgroup");

out:
 mutex_unlock(&fs_info->tree_log_mutex);







 if (!ret)
  record_root_in_trans(trans, parent, 1);
 return ret;
}
