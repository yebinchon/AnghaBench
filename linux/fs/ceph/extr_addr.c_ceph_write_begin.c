
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int EAGAIN ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int ceph_update_writeable_page (struct file*,int,unsigned int,struct page*) ;
 int dout (char*,struct file*,struct inode*,struct page*,int,int) ;
 struct inode* file_inode (struct file*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,int ) ;
 int put_page (struct page*) ;

__attribute__((used)) static int ceph_write_begin(struct file *file, struct address_space *mapping,
       loff_t pos, unsigned len, unsigned flags,
       struct page **pagep, void **fsdata)
{
 struct inode *inode = file_inode(file);
 struct page *page;
 pgoff_t index = pos >> PAGE_SHIFT;
 int r;

 do {

  page = grab_cache_page_write_begin(mapping, index, 0);
  if (!page)
   return -ENOMEM;

  dout("write_begin file %p inode %p page %p %d~%d\n", file,
       inode, page, (int)pos, (int)len);

  r = ceph_update_writeable_page(file, pos, len, page);
  if (r < 0)
   put_page(page);
  else
   *pagep = page;
 } while (r == -EAGAIN);

 return r;
}
