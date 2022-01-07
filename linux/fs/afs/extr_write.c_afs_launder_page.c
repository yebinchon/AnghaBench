
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; struct address_space* mapping; } ;
struct afs_vnode {int cache; } ;
struct address_space {int host; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 unsigned long AFS_PRIV_MAX ;
 unsigned long AFS_PRIV_SHIFT ;
 int ClearPagePrivate (struct page*) ;
 unsigned int PAGE_SIZE ;
 scalar_t__ PageFsCache (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int _enter (char*,int ) ;
 int afs_store_data (struct address_space*,int ,int ,unsigned int,unsigned int) ;
 scalar_t__ clear_page_dirty_for_io (struct page*) ;
 int fscache_uncache_page (int ,struct page*) ;
 int fscache_wait_on_page_write (int ,struct page*) ;
 unsigned long page_private (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int trace_afs_page_dirty (struct afs_vnode*,int ,int ,unsigned long) ;
 int tracepoint_string (char*) ;

int afs_launder_page(struct page *page)
{
 struct address_space *mapping = page->mapping;
 struct afs_vnode *vnode = AFS_FS_I(mapping->host);
 unsigned long priv;
 unsigned int f, t;
 int ret = 0;

 _enter("{%lx}", page->index);

 priv = page_private(page);
 if (clear_page_dirty_for_io(page)) {
  f = 0;
  t = PAGE_SIZE;
  if (PagePrivate(page)) {
   f = priv & AFS_PRIV_MAX;
   t = priv >> AFS_PRIV_SHIFT;
  }

  trace_afs_page_dirty(vnode, tracepoint_string("launder"),
         page->index, priv);
  ret = afs_store_data(mapping, page->index, page->index, t, f);
 }

 trace_afs_page_dirty(vnode, tracepoint_string("laundered"),
        page->index, priv);
 set_page_private(page, 0);
 ClearPagePrivate(page);







 return ret;
}
