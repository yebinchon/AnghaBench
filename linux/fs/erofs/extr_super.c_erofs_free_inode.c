
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_link; int * i_op; } ;
struct erofs_inode {int xattr_shared_xattrs; } ;


 struct erofs_inode* EROFS_I (struct inode*) ;
 int erofs_fast_symlink_iops ;
 int erofs_inode_cachep ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct erofs_inode*) ;

__attribute__((used)) static void erofs_free_inode(struct inode *inode)
{
 struct erofs_inode *vi = EROFS_I(inode);


 if (inode->i_op == &erofs_fast_symlink_iops)
  kfree(inode->i_link);
 kfree(vi->xattr_shared_xattrs);

 kmem_cache_free(erofs_inode_cachep, vi);
}
