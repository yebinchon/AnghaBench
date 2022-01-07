
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int v9fs_remove (struct inode*,struct dentry*,int ) ;

int v9fs_vfs_unlink(struct inode *i, struct dentry *d)
{
 return v9fs_remove(i, d, 0);
}
