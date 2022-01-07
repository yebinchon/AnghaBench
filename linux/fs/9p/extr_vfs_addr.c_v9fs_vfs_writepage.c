
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int mapping; } ;


 int EAGAIN ;
 int P9_DEBUG_VFS ;
 int SetPageError (struct page*) ;
 int mapping_set_error (int ,int) ;
 int p9_debug (int ,char*,struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int unlock_page (struct page*) ;
 int v9fs_vfs_writepage_locked (struct page*) ;

__attribute__((used)) static int v9fs_vfs_writepage(struct page *page, struct writeback_control *wbc)
{
 int retval;

 p9_debug(P9_DEBUG_VFS, "page %p\n", page);

 retval = v9fs_vfs_writepage_locked(page);
 if (retval < 0) {
  if (retval == -EAGAIN) {
   redirty_page_for_writepage(wbc, page);
   retval = 0;
  } else {
   SetPageError(page);
   mapping_set_error(page->mapping, retval);
  }
 } else
  retval = 0;

 unlock_page(page);
 return retval;
}
