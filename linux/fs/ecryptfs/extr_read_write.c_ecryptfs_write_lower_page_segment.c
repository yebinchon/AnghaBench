
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct inode {int dummy; } ;
typedef size_t loff_t ;


 size_t PAGE_SHIFT ;
 int ecryptfs_write_lower (struct inode*,char*,size_t,size_t) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;

int ecryptfs_write_lower_page_segment(struct inode *ecryptfs_inode,
          struct page *page_for_lower,
          size_t offset_in_page, size_t size)
{
 char *virt;
 loff_t offset;
 int rc;

 offset = ((((loff_t)page_for_lower->index) << PAGE_SHIFT)
    + offset_in_page);
 virt = kmap(page_for_lower);
 rc = ecryptfs_write_lower(ecryptfs_inode, virt, offset, size);
 if (rc > 0)
  rc = 0;
 kunmap(page_for_lower);
 return rc;
}
