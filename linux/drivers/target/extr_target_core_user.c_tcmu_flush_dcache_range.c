
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_SIZE ;
 int flush_dcache_page (int ) ;
 int offset_in_page (void*) ;
 size_t round_up (unsigned long,scalar_t__) ;
 int virt_to_page (void*) ;

__attribute__((used)) static inline void tcmu_flush_dcache_range(void *vaddr, size_t size)
{
 unsigned long offset = offset_in_page(vaddr);
 void *start = vaddr - offset;

 size = round_up(size+offset, PAGE_SIZE);

 while (size) {
  flush_dcache_page(virt_to_page(start));
  start += PAGE_SIZE;
  size -= PAGE_SIZE;
 }
}
