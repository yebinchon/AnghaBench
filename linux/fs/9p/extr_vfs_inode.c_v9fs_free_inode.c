
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int V9FS_I (struct inode*) ;
 int kmem_cache_free (int ,int ) ;
 int v9fs_inode_cache ;

void v9fs_free_inode(struct inode *inode)
{
 kmem_cache_free(v9fs_inode_cache, V9FS_I(inode));
}
