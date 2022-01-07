
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_parent; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int d_inode (int ) ;
 int debugfs_mount ;
 int debugfs_mount_count ;
 int dput (struct dentry*) ;
 int inode_unlock (int ) ;
 int simple_release_fs (int *,int *) ;

__attribute__((used)) static struct dentry *failed_creating(struct dentry *dentry)
{
 inode_unlock(d_inode(dentry->d_parent));
 dput(dentry);
 simple_release_fs(&debugfs_mount, &debugfs_mount_count);
 return ERR_PTR(-ENOMEM);
}
