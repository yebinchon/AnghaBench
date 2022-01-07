
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct file {int * private_data; } ;
typedef int loff_t ;


 int EACCES ;
 int EBADF ;
 int FYI ;
 int PAGE_SHIFT ;
 int cifs_dbg (int ,char*,struct page*,int,int) ;
 int cifs_readpage_worker (struct file*,struct page*,int*) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;

__attribute__((used)) static int cifs_readpage(struct file *file, struct page *page)
{
 loff_t offset = (loff_t)page->index << PAGE_SHIFT;
 int rc = -EACCES;
 unsigned int xid;

 xid = get_xid();

 if (file->private_data == ((void*)0)) {
  rc = -EBADF;
  free_xid(xid);
  return rc;
 }

 cifs_dbg(FYI, "readpage %p at offset %d 0x%x\n",
   page, (int)offset, (int)offset);

 rc = cifs_readpage_worker(file, page, &offset);

 free_xid(xid);
 return rc;
}
