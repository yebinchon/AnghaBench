
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int umode_t ;
typedef int u64 ;
struct inode {TYPE_1__* i_mapping; int * i_op; int * i_fop; int i_sb; } ;
struct TYPE_11__ {int len; int name; } ;
struct dentry {TYPE_4__ d_name; } ;
struct btrfs_trans_handle {TYPE_1__* i_mapping; int * i_op; int * i_fop; int i_sb; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_9__ {int * ops; } ;
struct TYPE_10__ {TYPE_2__ io_tree; struct btrfs_root* root; } ;
struct TYPE_8__ {int * a_ops; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int btrfs_add_nondir (struct inode*,TYPE_3__*,struct dentry*,TYPE_3__*,int ,int ) ;
 int btrfs_aops ;
 int btrfs_btree_balance_dirty (struct btrfs_fs_info*) ;
 int btrfs_end_transaction (struct inode*) ;
 int btrfs_extent_io_ops ;
 int btrfs_file_inode_operations ;
 int btrfs_file_operations ;
 int btrfs_find_free_ino (struct btrfs_root*,int *) ;
 int btrfs_init_inode_security (struct inode*,struct inode*,struct inode*,TYPE_4__*) ;
 int btrfs_ino (TYPE_3__*) ;
 struct inode* btrfs_new_inode (struct inode*,struct btrfs_root*,struct inode*,int ,int ,int ,int ,int ,int *) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 struct inode* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_inode (struct inode*,struct btrfs_root*,struct inode*) ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;

__attribute__((used)) static int btrfs_create(struct inode *dir, struct dentry *dentry,
   umode_t mode, bool excl)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(dir->i_sb);
 struct btrfs_trans_handle *trans;
 struct btrfs_root *root = BTRFS_I(dir)->root;
 struct inode *inode = ((void*)0);
 int err;
 u64 objectid;
 u64 index = 0;






 trans = btrfs_start_transaction(root, 5);
 if (IS_ERR(trans))
  return PTR_ERR(trans);

 err = btrfs_find_free_ino(root, &objectid);
 if (err)
  goto out_unlock;

 inode = btrfs_new_inode(trans, root, dir, dentry->d_name.name,
   dentry->d_name.len, btrfs_ino(BTRFS_I(dir)), objectid,
   mode, &index);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  inode = ((void*)0);
  goto out_unlock;
 }






 inode->i_fop = &btrfs_file_operations;
 inode->i_op = &btrfs_file_inode_operations;
 inode->i_mapping->a_ops = &btrfs_aops;

 err = btrfs_init_inode_security(trans, inode, dir, &dentry->d_name);
 if (err)
  goto out_unlock;

 err = btrfs_update_inode(trans, root, inode);
 if (err)
  goto out_unlock;

 err = btrfs_add_nondir(trans, BTRFS_I(dir), dentry, BTRFS_I(inode),
   0, index);
 if (err)
  goto out_unlock;

 BTRFS_I(inode)->io_tree.ops = &btrfs_extent_io_ops;
 d_instantiate_new(dentry, inode);

out_unlock:
 btrfs_end_transaction(trans);
 if (err && inode) {
  inode_dec_link_count(inode);
  discard_new_inode(inode);
 }
 btrfs_btree_balance_dirty(fs_info);
 return err;
}
