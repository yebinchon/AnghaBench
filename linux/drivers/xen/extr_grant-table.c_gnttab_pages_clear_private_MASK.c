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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct page*) ; 

void FUNC4(int nr_pages, struct page **pages)
{
	int i;

	for (i = 0; i < nr_pages; i++) {
		if (FUNC1(pages[i])) {
#if BITS_PER_LONG < 64
			FUNC2((void *)FUNC3(pages[i]));
#endif
			FUNC0(pages[i]);
		}
	}
}