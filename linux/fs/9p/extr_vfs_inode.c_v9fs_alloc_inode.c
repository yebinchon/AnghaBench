
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct v9fs_inode {struct inode vfs_inode; int v_mutex; scalar_t__ cache_validity; int * writeback_fid; int fscache_lock; int * fscache; } ;
struct super_block {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int mutex_init (int *) ;
 int v9fs_inode_cache ;

struct inode *v9fs_alloc_inode(struct super_block *sb)
{
 struct v9fs_inode *v9inode;
 v9inode = (struct v9fs_inode *)kmem_cache_alloc(v9fs_inode_cache,
       GFP_KERNEL);
 if (!v9inode)
  return ((void*)0);




 v9inode->writeback_fid = ((void*)0);
 v9inode->cache_validity = 0;
 mutex_init(&v9inode->v_mutex);
 return &v9inode->vfs_inode;
}
