
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct ceph_inode_info {int fscache; } ;


 int PageFsCache (struct page*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int fscache_uncache_page (int ,struct page*) ;
 int fscache_wait_on_page_write (int ,struct page*) ;

void ceph_invalidate_fscache_page(struct inode* inode, struct page *page)
{
 struct ceph_inode_info *ci = ceph_inode(inode);

 if (!PageFsCache(page))
  return;

 fscache_wait_on_page_write(ci->fscache, page);
 fscache_uncache_page(ci->fscache, page);
}
