
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_log_ctx {int dummy; } ;
typedef int loff_t ;


 int BTRFS_I (int ) ;
 int LOG_INODE_ALL ;
 int btrfs_log_inode_parent (struct btrfs_trans_handle*,int ,struct dentry*,int const,int const,int ,struct btrfs_log_ctx*) ;
 int d_inode (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;

int btrfs_log_dentry_safe(struct btrfs_trans_handle *trans,
     struct dentry *dentry,
     const loff_t start,
     const loff_t end,
     struct btrfs_log_ctx *ctx)
{
 struct dentry *parent = dget_parent(dentry);
 int ret;

 ret = btrfs_log_inode_parent(trans, BTRFS_I(d_inode(dentry)), parent,
         start, end, LOG_INODE_ALL, ctx);
 dput(parent);

 return ret;
}
