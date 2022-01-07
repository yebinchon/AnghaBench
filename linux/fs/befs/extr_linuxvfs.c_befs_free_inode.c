
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int BEFS_I (struct inode*) ;
 int befs_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void befs_free_inode(struct inode *inode)
{
 kmem_cache_free(befs_inode_cachep, BEFS_I(inode));
}
