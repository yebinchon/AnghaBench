
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int sgl; } ;
struct page {int dummy; } ;
struct ion_buffer {int size; struct sg_table* sg_table; } ;


 unsigned long PAGE_ALIGN (int ) ;
 unsigned long PAGE_SHIFT ;
 int __free_page (struct page*) ;
 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;
 struct page* sg_page (int ) ;

__attribute__((used)) static void ion_system_contig_heap_free(struct ion_buffer *buffer)
{
 struct sg_table *table = buffer->sg_table;
 struct page *page = sg_page(table->sgl);
 unsigned long pages = PAGE_ALIGN(buffer->size) >> PAGE_SHIFT;
 unsigned long i;

 for (i = 0; i < pages; i++)
  __free_page(page + i);
 sg_free_table(table);
 kfree(table);
}
