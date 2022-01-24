#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sg_table {int /*<<< orphan*/  sgl; } ;
struct page {int dummy; } ;
struct ion_heap {int dummy; } ;
struct ion_cma_heap {int /*<<< orphan*/  cma; } ;
struct ion_buffer {struct sg_table* sg_table; struct page* priv_virt; } ;

/* Variables and functions */
 unsigned long CONFIG_CMA_ALIGNMENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct page*,unsigned long) ; 
 unsigned long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct sg_table*) ; 
 struct sg_table* FUNC6 (int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 void* FUNC10 (struct page*) ; 
 int FUNC11 (struct sg_table*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct page*,unsigned long,int /*<<< orphan*/ ) ; 
 struct ion_cma_heap* FUNC13 (struct ion_heap*) ; 

__attribute__((used)) static int FUNC14(struct ion_heap *heap, struct ion_buffer *buffer,
			    unsigned long len,
			    unsigned long flags)
{
	struct ion_cma_heap *cma_heap = FUNC13(heap);
	struct sg_table *table;
	struct page *pages;
	unsigned long size = FUNC0(len);
	unsigned long nr_pages = size >> PAGE_SHIFT;
	unsigned long align = FUNC4(size);
	int ret;

	if (align > CONFIG_CMA_ALIGNMENT)
		align = CONFIG_CMA_ALIGNMENT;

	pages = FUNC2(cma_heap->cma, nr_pages, align, false);
	if (!pages)
		return -ENOMEM;

	if (FUNC1(pages)) {
		unsigned long nr_clear_pages = nr_pages;
		struct page *page = pages;

		while (nr_clear_pages > 0) {
			void *vaddr = FUNC7(page);

			FUNC9(vaddr, 0, PAGE_SIZE);
			FUNC8(vaddr);
			page++;
			nr_clear_pages--;
		}
	} else {
		FUNC9(FUNC10(pages), 0, size);
	}

	table = FUNC6(sizeof(*table), GFP_KERNEL);
	if (!table)
		goto err;

	ret = FUNC11(table, 1, GFP_KERNEL);
	if (ret)
		goto free_mem;

	FUNC12(table->sgl, pages, size, 0);

	buffer->priv_virt = pages;
	buffer->sg_table = table;
	return 0;

free_mem:
	FUNC5(table);
err:
	FUNC3(cma_heap->cma, pages, nr_pages);
	return -ENOMEM;
}