
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ion_cma_heap {int cma; } ;
struct ion_buffer {int sg_table; int size; struct page* priv_virt; int heap; } ;


 unsigned long PAGE_ALIGN (int ) ;
 unsigned long PAGE_SHIFT ;
 int cma_release (int ,struct page*,unsigned long) ;
 int kfree (int ) ;
 int sg_free_table (int ) ;
 struct ion_cma_heap* to_cma_heap (int ) ;

__attribute__((used)) static void ion_cma_free(struct ion_buffer *buffer)
{
 struct ion_cma_heap *cma_heap = to_cma_heap(buffer->heap);
 struct page *pages = buffer->priv_virt;
 unsigned long nr_pages = PAGE_ALIGN(buffer->size) >> PAGE_SHIFT;


 cma_release(cma_heap->cma, pages, nr_pages);

 sg_free_table(buffer->sg_table);
 kfree(buffer->sg_table);
}
