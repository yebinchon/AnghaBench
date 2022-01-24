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

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct page* FUNC3 (unsigned int) ; 

__attribute__((used)) static inline void
FUNC4(unsigned int virtual_start, unsigned int virtual_end)
{
	int mb_freed = 0;

	/*
	 * Align addresses
	 */
	virtual_start = FUNC0(virtual_start);
	virtual_end = FUNC0(virtual_end);

	while (virtual_start < virtual_end) {
		struct page *page;

		/*
		 * Clear page reserved bit,
		 * set count to 1, and free
		 * the page.
		 */
		page = FUNC3(virtual_start);
		FUNC1(page);

		virtual_start += PAGE_SIZE;
		mb_freed += PAGE_SIZE / 1024;
	}

	FUNC2("acornfb: freed %dK memory\n", mb_freed);
}