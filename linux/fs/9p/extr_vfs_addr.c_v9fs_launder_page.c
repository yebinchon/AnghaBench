
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ clear_page_dirty_for_io (struct page*) ;
 int v9fs_fscache_wait_on_page_write (struct inode*,struct page*) ;
 int v9fs_vfs_writepage_locked (struct page*) ;

__attribute__((used)) static int v9fs_launder_page(struct page *page)
{
 int retval;
 struct inode *inode = page->mapping->host;

 v9fs_fscache_wait_on_page_write(inode, page);
 if (clear_page_dirty_for_io(page)) {
  retval = v9fs_vfs_writepage_locked(page);
  if (retval)
   return retval;
 }
 return 0;
}
