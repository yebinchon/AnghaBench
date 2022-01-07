
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int sgl; } ;
struct page {int dummy; } ;
struct ion_heap {int dummy; } ;
struct ion_cma_heap {int cma; } ;
struct ion_buffer {struct sg_table* sg_table; struct page* priv_virt; } ;


 unsigned long CONFIG_CMA_ALIGNMENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 struct page* cma_alloc (int ,unsigned long,unsigned long,int) ;
 int cma_release (int ,struct page*,unsigned long) ;
 unsigned long get_order (unsigned long) ;
 int kfree (struct sg_table*) ;
 struct sg_table* kmalloc (int,int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memset (void*,int ,unsigned long) ;
 void* page_address (struct page*) ;
 int sg_alloc_table (struct sg_table*,int,int ) ;
 int sg_set_page (int ,struct page*,unsigned long,int ) ;
 struct ion_cma_heap* to_cma_heap (struct ion_heap*) ;

__attribute__((used)) static int ion_cma_allocate(struct ion_heap *heap, struct ion_buffer *buffer,
       unsigned long len,
       unsigned long flags)
{
 struct ion_cma_heap *cma_heap = to_cma_heap(heap);
 struct sg_table *table;
 struct page *pages;
 unsigned long size = PAGE_ALIGN(len);
 unsigned long nr_pages = size >> PAGE_SHIFT;
 unsigned long align = get_order(size);
 int ret;

 if (align > CONFIG_CMA_ALIGNMENT)
  align = CONFIG_CMA_ALIGNMENT;

 pages = cma_alloc(cma_heap->cma, nr_pages, align, 0);
 if (!pages)
  return -ENOMEM;

 if (PageHighMem(pages)) {
  unsigned long nr_clear_pages = nr_pages;
  struct page *page = pages;

  while (nr_clear_pages > 0) {
   void *vaddr = kmap_atomic(page);

   memset(vaddr, 0, PAGE_SIZE);
   kunmap_atomic(vaddr);
   page++;
   nr_clear_pages--;
  }
 } else {
  memset(page_address(pages), 0, size);
 }

 table = kmalloc(sizeof(*table), GFP_KERNEL);
 if (!table)
  goto err;

 ret = sg_alloc_table(table, 1, GFP_KERNEL);
 if (ret)
  goto free_mem;

 sg_set_page(table->sgl, pages, size, 0);

 buffer->priv_virt = pages;
 buffer->sg_table = table;
 return 0;

free_mem:
 kfree(table);
err:
 cma_release(cma_heap->cma, pages, nr_pages);
 return -ENOMEM;
}
