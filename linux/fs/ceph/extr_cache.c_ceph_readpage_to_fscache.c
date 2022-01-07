
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct ceph_inode_info {int fscache; } ;


 int GFP_KERNEL ;
 int PageFsCache (struct page*) ;
 int cache_valid (struct ceph_inode_info*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int fscache_uncache_page (int ,struct page*) ;
 int fscache_write_page (int ,struct page*,int ,int ) ;
 int i_size_read (struct inode*) ;

void ceph_readpage_to_fscache(struct inode *inode, struct page *page)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 int ret;

 if (!PageFsCache(page))
  return;

 if (!cache_valid(ci))
  return;

 ret = fscache_write_page(ci->fscache, page, i_size_read(inode),
     GFP_KERNEL);
 if (ret)
   fscache_uncache_page(ci->fscache, page);
}
