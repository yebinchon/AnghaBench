
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_inode {int fscache_lock; int fscache; } ;
struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int O_ACCMODE ;
 int O_RDONLY ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v9fs_cache_inode_flush_cookie (struct inode*) ;
 int v9fs_cache_inode_get_cookie (struct inode*) ;

void v9fs_cache_inode_set_cookie(struct inode *inode, struct file *filp)
{
 struct v9fs_inode *v9inode = V9FS_I(inode);

 if (!v9inode->fscache)
  return;

 mutex_lock(&v9inode->fscache_lock);

 if ((filp->f_flags & O_ACCMODE) != O_RDONLY)
  v9fs_cache_inode_flush_cookie(inode);
 else
  v9fs_cache_inode_get_cookie(inode);

 mutex_unlock(&v9inode->fscache_lock);
}
