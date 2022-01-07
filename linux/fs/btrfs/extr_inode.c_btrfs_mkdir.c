
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int umode_t ;
typedef int u64 ;
struct inode {int * i_fop; int * i_op; int i_sb; } ;
struct TYPE_8__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct btrfs_trans_handle {int * i_fop; int * i_op; int i_sb; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_7__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int btrfs_add_link (struct inode*,TYPE_1__*,TYPE_1__*,int ,int ,int ,int ) ;
 int btrfs_btree_balance_dirty (struct btrfs_fs_info*) ;
 int btrfs_dir_file_operations ;
 int btrfs_dir_inode_operations ;
 int btrfs_end_transaction (struct inode*) ;
 int btrfs_find_free_ino (struct btrfs_root*,int *) ;
 int btrfs_i_size_write (TYPE_1__*,int ) ;
 int btrfs_init_inode_security (struct inode*,struct inode*,struct inode*,TYPE_2__*) ;
 int btrfs_ino (TYPE_1__*) ;
 struct inode* btrfs_new_inode (struct inode*,struct btrfs_root*,struct inode*,int ,int ,int ,int ,int,int *) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 struct inode* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_inode (struct inode*,struct btrfs_root*,struct inode*) ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;

__attribute__((used)) static int btrfs_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(dir->i_sb);
 struct inode *inode = ((void*)0);
 struct btrfs_trans_handle *trans;
 struct btrfs_root *root = BTRFS_I(dir)->root;
 int err = 0;
 u64 objectid = 0;
 u64 index = 0;






 trans = btrfs_start_transaction(root, 5);
 if (IS_ERR(trans))
  return PTR_ERR(trans);

 err = btrfs_find_free_ino(root, &objectid);
 if (err)
  goto out_fail;

 inode = btrfs_new_inode(trans, root, dir, dentry->d_name.name,
   dentry->d_name.len, btrfs_ino(BTRFS_I(dir)), objectid,
   S_IFDIR | mode, &index);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  inode = ((void*)0);
  goto out_fail;
 }


 inode->i_op = &btrfs_dir_inode_operations;
 inode->i_fop = &btrfs_dir_file_operations;

 err = btrfs_init_inode_security(trans, inode, dir, &dentry->d_name);
 if (err)
  goto out_fail;

 btrfs_i_size_write(BTRFS_I(inode), 0);
 err = btrfs_update_inode(trans, root, inode);
 if (err)
  goto out_fail;

 err = btrfs_add_link(trans, BTRFS_I(dir), BTRFS_I(inode),
   dentry->d_name.name,
   dentry->d_name.len, 0, index);
 if (err)
  goto out_fail;

 d_instantiate_new(dentry, inode);

out_fail:
 btrfs_end_transaction(trans);
 if (err && inode) {
  inode_dec_link_count(inode);
  discard_new_inode(inode);
 }
 btrfs_btree_balance_dirty(fs_info);
 return err;
}
