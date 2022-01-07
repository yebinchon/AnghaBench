
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef size_t loff_t ;


 size_t PAGE_SHIFT ;
 int ecryptfs_read_lower (char*,size_t,size_t,struct inode*) ;
 int flush_dcache_page (struct page*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;

int ecryptfs_read_lower_page_segment(struct page *page_for_ecryptfs,
         pgoff_t page_index,
         size_t offset_in_page, size_t size,
         struct inode *ecryptfs_inode)
{
 char *virt;
 loff_t offset;
 int rc;

 offset = ((((loff_t)page_index) << PAGE_SHIFT) + offset_in_page);
 virt = kmap(page_for_ecryptfs);
 rc = ecryptfs_read_lower(virt, offset, size, ecryptfs_inode);
 if (rc > 0)
  rc = 0;
 kunmap(page_for_ecryptfs);
 flush_dcache_page(page_for_ecryptfs);
 return rc;
}
