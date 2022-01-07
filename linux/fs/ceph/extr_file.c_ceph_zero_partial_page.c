
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_mapping; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 struct page* find_lock_page (int ,int) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;
 int zero_user (struct page*,int,unsigned int) ;

__attribute__((used)) static inline void ceph_zero_partial_page(
 struct inode *inode, loff_t offset, unsigned size)
{
 struct page *page;
 pgoff_t index = offset >> PAGE_SHIFT;

 page = find_lock_page(inode->i_mapping, index);
 if (page) {
  wait_on_page_writeback(page);
  zero_user(page, offset & (PAGE_SIZE - 1), size);
  unlock_page(page);
  put_page(page);
 }
}
