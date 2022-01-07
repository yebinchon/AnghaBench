
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pgprot_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int memset (void*,int ,int) ;
 void* vm_map_ram (struct page**,int,int,int ) ;
 int vm_unmap_ram (void*,int) ;

__attribute__((used)) static int ion_heap_clear_pages(struct page **pages, int num, pgprot_t pgprot)
{
 void *addr = vm_map_ram(pages, num, -1, pgprot);

 if (!addr)
  return -ENOMEM;
 memset(addr, 0, PAGE_SIZE * num);
 vm_unmap_ram(addr, num);

 return 0;
}
