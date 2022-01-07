
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_inode {int fscache; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;


 int P9_DEBUG_FSC ;
 scalar_t__ PageFsCache (struct page*) ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 int fscache_wait_on_page_write (int ,struct page*) ;
 int p9_debug (int ,char*,struct inode*,struct page*) ;

void __v9fs_fscache_wait_on_page_write(struct inode *inode, struct page *page)
{
 const struct v9fs_inode *v9inode = V9FS_I(inode);
 p9_debug(P9_DEBUG_FSC, "inode %p page %p\n", inode, page);
 if (PageFsCache(page))
  fscache_wait_on_page_write(v9inode->fscache, page);
}
