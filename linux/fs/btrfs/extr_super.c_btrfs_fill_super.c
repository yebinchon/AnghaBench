
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; int s_flags; int s_root; int s_iflags; int s_xattr; int * s_export_op; int * s_d_op; int * s_op; int s_magic; int s_maxbytes; } ;
struct inode {int dummy; } ;
struct btrfs_key {scalar_t__ offset; int type; int objectid; } ;
struct btrfs_fs_info {int fs_root; } ;
struct btrfs_fs_devices {int dummy; } ;


 int BTRFS_FIRST_FREE_OBJECTID ;
 int BTRFS_INODE_ITEM_KEY ;
 int BTRFS_SUPER_MAGIC ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MAX_LFS_FILESIZE ;
 int PTR_ERR (struct inode*) ;
 int SB_ACTIVE ;
 int SB_I_CGROUPWB ;
 int SB_I_VERSION ;
 int SB_POSIXACL ;
 int btrfs_dentry_operations ;
 int btrfs_err (struct btrfs_fs_info*,char*) ;
 int btrfs_export_ops ;
 struct inode* btrfs_iget (struct super_block*,struct btrfs_key*,int ,int *) ;
 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 int btrfs_super_ops ;
 int btrfs_xattr_handlers ;
 int cleancache_init_fs (struct super_block*) ;
 int close_ctree (struct btrfs_fs_info*) ;
 int d_make_root (struct inode*) ;
 int open_ctree (struct super_block*,struct btrfs_fs_devices*,char*) ;
 int super_setup_bdi (struct super_block*) ;

__attribute__((used)) static int btrfs_fill_super(struct super_block *sb,
       struct btrfs_fs_devices *fs_devices,
       void *data)
{
 struct inode *inode;
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 struct btrfs_key key;
 int err;

 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_magic = BTRFS_SUPER_MAGIC;
 sb->s_op = &btrfs_super_ops;
 sb->s_d_op = &btrfs_dentry_operations;
 sb->s_export_op = &btrfs_export_ops;
 sb->s_xattr = btrfs_xattr_handlers;
 sb->s_time_gran = 1;



 sb->s_flags |= SB_I_VERSION;
 sb->s_iflags |= SB_I_CGROUPWB;

 err = super_setup_bdi(sb);
 if (err) {
  btrfs_err(fs_info, "super_setup_bdi failed");
  return err;
 }

 err = open_ctree(sb, fs_devices, (char *)data);
 if (err) {
  btrfs_err(fs_info, "open_ctree failed");
  return err;
 }

 key.objectid = BTRFS_FIRST_FREE_OBJECTID;
 key.type = BTRFS_INODE_ITEM_KEY;
 key.offset = 0;
 inode = btrfs_iget(sb, &key, fs_info->fs_root, ((void*)0));
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto fail_close;
 }

 sb->s_root = d_make_root(inode);
 if (!sb->s_root) {
  err = -ENOMEM;
  goto fail_close;
 }

 cleancache_init_fs(sb);
 sb->s_flags |= SB_ACTIVE;
 return 0;

fail_close:
 close_ctree(fs_info);
 return err;
}
