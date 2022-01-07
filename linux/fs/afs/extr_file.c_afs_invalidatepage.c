
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; TYPE_1__* mapping; } ;
struct afs_vnode {int cache; } ;
struct TYPE_2__ {int host; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 int BUG_ON (int) ;
 int ClearPagePrivate (struct page*) ;
 unsigned int PAGE_SIZE ;
 scalar_t__ PageFsCache (struct page*) ;
 int PageLocked (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int _enter (char*,int ,unsigned int,unsigned int) ;
 int _leave (char*) ;
 int fscache_uncache_page (int ,struct page*) ;
 int fscache_wait_on_page_write (int ,struct page*) ;
 unsigned long page_private (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int trace_afs_page_dirty (struct afs_vnode*,int ,int ,unsigned long) ;
 int tracepoint_string (char*) ;

__attribute__((used)) static void afs_invalidatepage(struct page *page, unsigned int offset,
          unsigned int length)
{
 struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
 unsigned long priv;

 _enter("{%lu},%u,%u", page->index, offset, length);

 BUG_ON(!PageLocked(page));


 if (offset == 0 && length == PAGE_SIZE) {
  if (PagePrivate(page)) {
   priv = page_private(page);
   trace_afs_page_dirty(vnode, tracepoint_string("inval"),
          page->index, priv);
   set_page_private(page, 0);
   ClearPagePrivate(page);
  }
 }

 _leave("");
}
