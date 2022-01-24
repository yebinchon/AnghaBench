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
struct page {int dummy; } ;
struct ion_cma_heap {int /*<<< orphan*/  cma; } ;
struct ion_buffer {int /*<<< orphan*/  sg_table; int /*<<< orphan*/  size; struct page* priv_virt; int /*<<< orphan*/  heap; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ion_cma_heap* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ion_buffer *buffer)
{
	struct ion_cma_heap *cma_heap = FUNC4(buffer->heap);
	struct page *pages = buffer->priv_virt;
	unsigned long nr_pages = FUNC0(buffer->size) >> PAGE_SHIFT;

	/* release memory */
	FUNC1(cma_heap->cma, pages, nr_pages);
	/* release sg table */
	FUNC3(buffer->sg_table);
	FUNC2(buffer->sg_table);
}