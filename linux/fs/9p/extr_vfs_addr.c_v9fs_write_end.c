
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {unsigned int i_size; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int P9_DEBUG_VFS ;
 unsigned int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int i_size_write (struct inode*,unsigned int) ;
 int inode_add_bytes (struct inode*,unsigned int) ;
 int p9_debug (int ,char*,struct file*,struct address_space*) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int v9fs_write_end(struct file *filp, struct address_space *mapping,
     loff_t pos, unsigned len, unsigned copied,
     struct page *page, void *fsdata)
{
 loff_t last_pos = pos + copied;
 struct inode *inode = page->mapping->host;

 p9_debug(P9_DEBUG_VFS, "filp %p, mapping %p\n", filp, mapping);

 if (!PageUptodate(page)) {
  if (unlikely(copied < len)) {
   copied = 0;
   goto out;
  } else if (len == PAGE_SIZE) {
   SetPageUptodate(page);
  }
 }




 if (last_pos > inode->i_size) {
  inode_add_bytes(inode, last_pos - inode->i_size);
  i_size_write(inode, last_pos);
 }
 set_page_dirty(page);
out:
 unlock_page(page);
 put_page(page);

 return copied;
}
