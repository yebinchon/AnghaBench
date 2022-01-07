
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ private; int index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct ceph_snap_context {int dummy; } ;
struct ceph_inode_info {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int ClearPageChecked (struct page*) ;
 int ClearPagePrivate (struct page*) ;
 unsigned int PAGE_SIZE ;
 int PageLocked (struct page*) ;
 int PagePrivate (struct page*) ;
 int WARN_ON (int) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int ceph_invalidate_fscache_page (struct inode*,struct page*) ;
 int ceph_put_snap_context (struct ceph_snap_context*) ;
 int ceph_put_wrbuffer_cap_refs (struct ceph_inode_info*,int,struct ceph_snap_context*) ;
 int dout (char*,struct inode*,struct page*,int ,...) ;
 struct ceph_snap_context* page_snap_context (struct page*) ;

__attribute__((used)) static void ceph_invalidatepage(struct page *page, unsigned int offset,
    unsigned int length)
{
 struct inode *inode;
 struct ceph_inode_info *ci;
 struct ceph_snap_context *snapc = page_snap_context(page);

 inode = page->mapping->host;
 ci = ceph_inode(inode);

 if (offset != 0 || length != PAGE_SIZE) {
  dout("%p invalidatepage %p idx %lu partial dirty page %u~%u\n",
       inode, page, page->index, offset, length);
  return;
 }

 ceph_invalidate_fscache_page(inode, page);

 WARN_ON(!PageLocked(page));
 if (!PagePrivate(page))
  return;

 ClearPageChecked(page);

 dout("%p invalidatepage %p idx %lu full dirty page\n",
      inode, page, page->index);

 ceph_put_wrbuffer_cap_refs(ci, 1, snapc);
 ceph_put_snap_context(snapc);
 page->private = 0;
 ClearPagePrivate(page);
}
