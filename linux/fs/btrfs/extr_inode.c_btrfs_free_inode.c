
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int BTRFS_I (struct inode*) ;
 int btrfs_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

void btrfs_free_inode(struct inode *inode)
{
 kmem_cache_free(btrfs_inode_cachep, BTRFS_I(inode));
}
