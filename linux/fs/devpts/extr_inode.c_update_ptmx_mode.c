
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptmxmode; } ;
struct pts_fs_info {TYPE_1__ mount_opts; scalar_t__ ptmx_dentry; } ;
struct inode {int i_mode; } ;


 int S_IFCHR ;
 struct inode* d_inode (scalar_t__) ;

__attribute__((used)) static void update_ptmx_mode(struct pts_fs_info *fsi)
{
 struct inode *inode;
 if (fsi->ptmx_dentry) {
  inode = d_inode(fsi->ptmx_dentry);
  inode->i_mode = S_IFCHR|fsi->mount_opts.ptmxmode;
 }
}
