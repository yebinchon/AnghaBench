
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct dentry {int dummy; } ;
struct btrfs_root {scalar_t__ i_generation; } ;
struct btrfs_key {scalar_t__ offset; int type; scalar_t__ objectid; } ;
struct btrfs_fs_info {int subvol_srcu; } ;


 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ;
 int BTRFS_INODE_ITEM_KEY ;
 int BTRFS_ROOT_ITEM_KEY ;
 struct dentry* ERR_PTR (int) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 struct inode* btrfs_iget (struct super_block*,struct btrfs_key*,struct inode*,int *) ;
 struct inode* btrfs_read_fs_root_no_name (struct btrfs_fs_info*,struct btrfs_key*) ;
 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 int iput (struct inode*) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static struct dentry *btrfs_get_dentry(struct super_block *sb, u64 objectid,
           u64 root_objectid, u32 generation,
           int check_generation)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 struct btrfs_root *root;
 struct inode *inode;
 struct btrfs_key key;
 int index;
 int err = 0;

 if (objectid < BTRFS_FIRST_FREE_OBJECTID)
  return ERR_PTR(-ESTALE);

 key.objectid = root_objectid;
 key.type = BTRFS_ROOT_ITEM_KEY;
 key.offset = (u64)-1;

 index = srcu_read_lock(&fs_info->subvol_srcu);

 root = btrfs_read_fs_root_no_name(fs_info, &key);
 if (IS_ERR(root)) {
  err = PTR_ERR(root);
  goto fail;
 }

 key.objectid = objectid;
 key.type = BTRFS_INODE_ITEM_KEY;
 key.offset = 0;

 inode = btrfs_iget(sb, &key, root, ((void*)0));
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto fail;
 }

 srcu_read_unlock(&fs_info->subvol_srcu, index);

 if (check_generation && generation != inode->i_generation) {
  iput(inode);
  return ERR_PTR(-ESTALE);
 }

 return d_obtain_alias(inode);
fail:
 srcu_read_unlock(&fs_info->subvol_srcu, index);
 return ERR_PTR(err);
}
