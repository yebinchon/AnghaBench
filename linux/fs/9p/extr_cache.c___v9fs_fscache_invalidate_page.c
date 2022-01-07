
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_inode {int fscache; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int BUG_ON (int) ;
 scalar_t__ PageFsCache (struct page*) ;
 int PageLocked (struct page*) ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 int fscache_uncache_page (int ,struct page*) ;
 int fscache_wait_on_page_write (int ,struct page*) ;

void __v9fs_fscache_invalidate_page(struct page *page)
{
 struct inode *inode = page->mapping->host;
 struct v9fs_inode *v9inode = V9FS_I(inode);

 BUG_ON(!v9inode->fscache);

 if (PageFsCache(page)) {
  fscache_wait_on_page_write(v9inode->fscache, page);
  BUG_ON(!PageLocked(page));
  fscache_uncache_page(v9inode->fscache, page);
 }
}
