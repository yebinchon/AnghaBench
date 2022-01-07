
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie {int dummy; } ;
struct ceph_inode_info {int i_vino; int vfs_inode; struct fscache_cookie* fscache; } ;


 int fscache_relinquish_cookie (struct fscache_cookie*,int *,int) ;
 int fscache_uncache_all_inode_pages (struct fscache_cookie*,int *) ;

void ceph_fscache_unregister_inode_cookie(struct ceph_inode_info* ci)
{
 struct fscache_cookie* cookie;

 if ((cookie = ci->fscache) == ((void*)0))
  return;

 ci->fscache = ((void*)0);

 fscache_uncache_all_inode_pages(cookie, &ci->vfs_inode);
 fscache_relinquish_cookie(cookie, &ci->i_vino, 0);
}
