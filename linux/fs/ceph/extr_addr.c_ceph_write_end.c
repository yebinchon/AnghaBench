
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;


 int CHECK_CAPS_AUTHONLY ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int ceph_check_caps (int ,int ,int *) ;
 int ceph_inode (struct inode*) ;
 int ceph_inode_set_size (struct inode*,unsigned int) ;
 int dout (char*,struct file*,struct inode*,struct page*,int,int,int) ;
 struct inode* file_inode (struct file*) ;
 unsigned int i_size_read (struct inode*) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ceph_write_end(struct file *file, struct address_space *mapping,
     loff_t pos, unsigned len, unsigned copied,
     struct page *page, void *fsdata)
{
 struct inode *inode = file_inode(file);
 bool check_cap = 0;

 dout("write_end file %p inode %p page %p %d~%d (%d)\n", file,
      inode, page, (int)pos, (int)copied, (int)len);


 if (!PageUptodate(page)) {
  if (copied < len) {
   copied = 0;
   goto out;
  }
  SetPageUptodate(page);
 }


 if (pos+copied > i_size_read(inode))
  check_cap = ceph_inode_set_size(inode, pos+copied);

 set_page_dirty(page);

out:
 unlock_page(page);
 put_page(page);

 if (check_cap)
  ceph_check_caps(ceph_inode(inode), CHECK_CAPS_AUTHONLY, ((void*)0));

 return copied;
}
