
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 size_t PAGE_SHIFT ;
 int __free_page (struct page*) ;
 int kvfree (struct page**) ;

__attribute__((used)) static void imgu_dmamap_free_buffer(struct page **pages,
        size_t size)
{
 int count = size >> PAGE_SHIFT;

 while (count--)
  __free_page(pages[count]);
 kvfree(pages);
}
