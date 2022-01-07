
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_inode {int writeback_fid; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int P9_DEBUG_VFS ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;
 int p9_debug (int ,char*,struct file*,struct address_space*) ;
 int put_page (struct page*) ;
 int v9fs_fid_readpage (int ,struct page*) ;

__attribute__((used)) static int v9fs_write_begin(struct file *filp, struct address_space *mapping,
       loff_t pos, unsigned len, unsigned flags,
       struct page **pagep, void **fsdata)
{
 int retval = 0;
 struct page *page;
 struct v9fs_inode *v9inode;
 pgoff_t index = pos >> PAGE_SHIFT;
 struct inode *inode = mapping->host;


 p9_debug(P9_DEBUG_VFS, "filp %p, mapping %p\n", filp, mapping);

 v9inode = V9FS_I(inode);
start:
 page = grab_cache_page_write_begin(mapping, index, flags);
 if (!page) {
  retval = -ENOMEM;
  goto out;
 }
 BUG_ON(!v9inode->writeback_fid);
 if (PageUptodate(page))
  goto out;

 if (len == PAGE_SIZE)
  goto out;

 retval = v9fs_fid_readpage(v9inode->writeback_fid, page);
 put_page(page);
 if (!retval)
  goto start;
out:
 *pagep = page;
 return retval;
}
