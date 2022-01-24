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
struct ion_buffer {int /*<<< orphan*/  size; struct sg_table* sg_table; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_table*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ion_buffer *buffer)
{
	struct sg_table *table = buffer->sg_table;
	struct page *page = FUNC4(table->sgl);
	unsigned long pages = FUNC0(buffer->size) >> PAGE_SHIFT;
	unsigned long i;

	for (i = 0; i < pages; i++)
		FUNC1(page + i);
	FUNC3(table);
	FUNC2(table);
}