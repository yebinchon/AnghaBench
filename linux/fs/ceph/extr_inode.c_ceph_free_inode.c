
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ceph_inode_info {int i_symlink; } ;


 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int ceph_inode_cachep ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct ceph_inode_info*) ;

void ceph_free_inode(struct inode *inode)
{
 struct ceph_inode_info *ci = ceph_inode(inode);

 kfree(ci->i_symlink);
 kmem_cache_free(ceph_inode_cachep, ci);
}
