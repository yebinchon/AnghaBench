
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned int PAGE_ALIGN (unsigned int) ;
 unsigned int PAGE_SIZE ;
 int __free_reserved_page (struct page*) ;
 int printk (char*,int) ;
 struct page* virt_to_page (unsigned int) ;

__attribute__((used)) static inline void
free_unused_pages(unsigned int virtual_start, unsigned int virtual_end)
{
 int mb_freed = 0;




 virtual_start = PAGE_ALIGN(virtual_start);
 virtual_end = PAGE_ALIGN(virtual_end);

 while (virtual_start < virtual_end) {
  struct page *page;






  page = virt_to_page(virtual_start);
  __free_reserved_page(page);

  virtual_start += PAGE_SIZE;
  mb_freed += PAGE_SIZE / 1024;
 }

 printk("acornfb: freed %dK memory\n", mb_freed);
}
