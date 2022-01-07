
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ctime; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 int btrfs_setxattr (struct btrfs_trans_handle*,struct inode*,char const*,void const*,size_t,int) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int current_time (struct inode*) ;
 int inode_inc_iversion (struct inode*) ;

int btrfs_setxattr_trans(struct inode *inode, const char *name,
    const void *value, size_t size, int flags)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_trans_handle *trans;
 int ret;

 trans = btrfs_start_transaction(root, 2);
 if (IS_ERR(trans))
  return PTR_ERR(trans);

 ret = btrfs_setxattr(trans, inode, name, value, size, flags);
 if (ret)
  goto out;

 inode_inc_iversion(inode);
 inode->i_ctime = current_time(inode);
 ret = btrfs_update_inode(trans, root, inode);
 BUG_ON(ret);
out:
 btrfs_end_transaction(trans);
 return ret;
}
