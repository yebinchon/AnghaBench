
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct inode {int i_nlink; int i_ctime; int i_sb; } ;
struct dentry {struct dentry* d_parent; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_8__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_9__ {unsigned long long dir_index; int runtime_flags; struct btrfs_root* root; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_COPY_EVERYTHING ;
 int BTRFS_LINK_MAX ;
 int BTRFS_NEED_TRANS_COMMIT ;
 int EMLINK ;
 int EXDEV ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_add_nondir (struct btrfs_trans_handle*,TYPE_2__*,struct dentry*,TYPE_2__*,int,int ) ;
 int btrfs_btree_balance_dirty (struct btrfs_fs_info*) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 int btrfs_log_new_name (struct btrfs_trans_handle*,TYPE_2__*,int *,struct dentry*,int,int *) ;
 int btrfs_orphan_del (struct btrfs_trans_handle*,TYPE_2__*) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int btrfs_set_inode_index (TYPE_2__*,int *) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int ihold (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_iversion (struct inode*) ;
 int iput (struct inode*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int btrfs_link(struct dentry *old_dentry, struct inode *dir,
        struct dentry *dentry)
{
 struct btrfs_trans_handle *trans = ((void*)0);
 struct btrfs_root *root = BTRFS_I(dir)->root;
 struct inode *inode = d_inode(old_dentry);
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 u64 index;
 int err;
 int drop_inode = 0;


 if (root->root_key.objectid != BTRFS_I(inode)->root->root_key.objectid)
  return -EXDEV;

 if (inode->i_nlink >= BTRFS_LINK_MAX)
  return -EMLINK;

 err = btrfs_set_inode_index(BTRFS_I(dir), &index);
 if (err)
  goto fail;







 trans = btrfs_start_transaction(root, inode->i_nlink ? 5 : 6);
 if (IS_ERR(trans)) {
  err = PTR_ERR(trans);
  trans = ((void*)0);
  goto fail;
 }


 BTRFS_I(inode)->dir_index = 0ULL;
 inc_nlink(inode);
 inode_inc_iversion(inode);
 inode->i_ctime = current_time(inode);
 ihold(inode);
 set_bit(BTRFS_INODE_COPY_EVERYTHING, &BTRFS_I(inode)->runtime_flags);

 err = btrfs_add_nondir(trans, BTRFS_I(dir), dentry, BTRFS_I(inode),
   1, index);

 if (err) {
  drop_inode = 1;
 } else {
  struct dentry *parent = dentry->d_parent;
  int ret;

  err = btrfs_update_inode(trans, root, inode);
  if (err)
   goto fail;
  if (inode->i_nlink == 1) {




   err = btrfs_orphan_del(trans, BTRFS_I(inode));
   if (err)
    goto fail;
  }
  d_instantiate(dentry, inode);
  ret = btrfs_log_new_name(trans, BTRFS_I(inode), ((void*)0), parent,
      1, ((void*)0));
  if (ret == BTRFS_NEED_TRANS_COMMIT) {
   err = btrfs_commit_transaction(trans);
   trans = ((void*)0);
  }
 }

fail:
 if (trans)
  btrfs_end_transaction(trans);
 if (drop_inode) {
  inode_dec_link_count(inode);
  iput(inode);
 }
 btrfs_btree_balance_dirty(fs_info);
 return err;
}
