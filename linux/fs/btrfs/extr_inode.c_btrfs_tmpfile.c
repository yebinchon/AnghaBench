
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int umode_t ;
typedef int u64 ;
struct inode {TYPE_1__* i_mapping; int * i_op; int * i_fop; int i_sb; } ;
struct dentry {int dummy; } ;
struct btrfs_trans_handle {TYPE_1__* i_mapping; int * i_op; int * i_fop; int i_sb; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_7__ {int * ops; } ;
struct TYPE_8__ {TYPE_2__ io_tree; struct btrfs_root* root; } ;
struct TYPE_6__ {int * a_ops; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int btrfs_aops ;
 int btrfs_btree_balance_dirty (struct btrfs_fs_info*) ;
 int btrfs_end_transaction (struct inode*) ;
 int btrfs_extent_io_ops ;
 int btrfs_file_inode_operations ;
 int btrfs_file_operations ;
 int btrfs_find_free_ino (struct btrfs_root*,int *) ;
 int btrfs_init_inode_security (struct inode*,struct inode*,struct inode*,int *) ;
 int btrfs_ino (TYPE_3__*) ;
 struct inode* btrfs_new_inode (struct inode*,struct btrfs_root*,struct inode*,int *,int ,int ,int ,int ,int *) ;
 int btrfs_orphan_add (struct inode*,TYPE_3__*) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 struct inode* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_inode (struct inode*,struct btrfs_root*,struct inode*) ;
 int d_tmpfile (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int set_nlink (struct inode*,int) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int btrfs_tmpfile(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(dir->i_sb);
 struct btrfs_trans_handle *trans;
 struct btrfs_root *root = BTRFS_I(dir)->root;
 struct inode *inode = ((void*)0);
 u64 objectid;
 u64 index;
 int ret = 0;




 trans = btrfs_start_transaction(root, 5);
 if (IS_ERR(trans))
  return PTR_ERR(trans);

 ret = btrfs_find_free_ino(root, &objectid);
 if (ret)
  goto out;

 inode = btrfs_new_inode(trans, root, dir, ((void*)0), 0,
   btrfs_ino(BTRFS_I(dir)), objectid, mode, &index);
 if (IS_ERR(inode)) {
  ret = PTR_ERR(inode);
  inode = ((void*)0);
  goto out;
 }

 inode->i_fop = &btrfs_file_operations;
 inode->i_op = &btrfs_file_inode_operations;

 inode->i_mapping->a_ops = &btrfs_aops;
 BTRFS_I(inode)->io_tree.ops = &btrfs_extent_io_ops;

 ret = btrfs_init_inode_security(trans, inode, dir, ((void*)0));
 if (ret)
  goto out;

 ret = btrfs_update_inode(trans, root, inode);
 if (ret)
  goto out;
 ret = btrfs_orphan_add(trans, BTRFS_I(inode));
 if (ret)
  goto out;
 set_nlink(inode, 1);
 d_tmpfile(dentry, inode);
 unlock_new_inode(inode);
 mark_inode_dirty(inode);
out:
 btrfs_end_transaction(trans);
 if (ret && inode)
  discard_new_inode(inode);
 btrfs_btree_balance_dirty(fs_info);
 return ret;
}
