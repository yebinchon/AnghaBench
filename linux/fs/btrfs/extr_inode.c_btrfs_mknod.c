
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int umode_t ;
typedef int u64 ;
struct inode {int i_mode; int * i_op; int i_sb; } ;
struct TYPE_7__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct btrfs_trans_handle {int i_mode; int * i_op; int i_sb; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
typedef int dev_t ;
struct TYPE_6__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int btrfs_add_nondir (struct inode*,TYPE_1__*,struct dentry*,TYPE_1__*,int ,int ) ;
 int btrfs_btree_balance_dirty (struct btrfs_fs_info*) ;
 int btrfs_end_transaction (struct inode*) ;
 int btrfs_find_free_ino (struct btrfs_root*,int *) ;
 int btrfs_init_inode_security (struct inode*,struct inode*,struct inode*,TYPE_2__*) ;
 int btrfs_ino (TYPE_1__*) ;
 struct inode* btrfs_new_inode (struct inode*,struct btrfs_root*,struct inode*,int ,int ,int ,int ,int ,int *) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int btrfs_special_inode_operations ;
 struct inode* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_inode (struct inode*,struct btrfs_root*,struct inode*) ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int inode_dec_link_count (struct inode*) ;

__attribute__((used)) static int btrfs_mknod(struct inode *dir, struct dentry *dentry,
   umode_t mode, dev_t rdev)
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







 inode->i_op = &btrfs_special_inode_operations;
 init_special_inode(inode, inode->i_mode, rdev);

 err = btrfs_init_inode_security(trans, inode, dir, &dentry->d_name);
 if (err)
  goto out_unlock;

 err = btrfs_add_nondir(trans, BTRFS_I(dir), dentry, BTRFS_I(inode),
   0, index);
 if (err)
  goto out_unlock;

 btrfs_update_inode(trans, root, inode);
 d_instantiate_new(dentry, inode);

out_unlock:
 btrfs_end_transaction(trans);
 btrfs_btree_balance_dirty(fs_info);
 if (err && inode) {
  inode_dec_link_count(inode);
  discard_new_inode(inode);
 }
 return err;
}
