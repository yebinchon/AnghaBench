
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; struct debugfs_fs_info* s_fs_info; } ;
struct inode {int i_gid; int i_uid; int i_mode; } ;
struct debugfs_mount_opts {int gid; int uid; int mode; } ;
struct debugfs_fs_info {struct debugfs_mount_opts mount_opts; } ;


 int S_IALLUGO ;
 struct inode* d_inode (int ) ;

__attribute__((used)) static int debugfs_apply_options(struct super_block *sb)
{
 struct debugfs_fs_info *fsi = sb->s_fs_info;
 struct inode *inode = d_inode(sb->s_root);
 struct debugfs_mount_opts *opts = &fsi->mount_opts;

 inode->i_mode &= ~S_IALLUGO;
 inode->i_mode |= opts->mode;

 inode->i_uid = opts->uid;
 inode->i_gid = opts->gid;

 return 0;
}
