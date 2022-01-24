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
 int FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 struct page* FUNC2 (struct page*) ; 
 struct page* FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static bool FUNC6(unsigned long pfn)
{
	if (FUNC4(pfn)) {
		bool reserved;
		struct page *tail = FUNC3(pfn);
		struct page *head = FUNC2(tail);
		reserved = !!(FUNC0(head));
		if (head != tail) {
			/*
			 * "head" is not a dangling pointer
			 * (compound_head takes care of that)
			 * but the hugepage may have been split
			 * from under us (and we may not hold a
			 * reference count on the head page so it can
			 * be reused before we run PageReferenced), so
			 * we've to check PageTail before returning
			 * what we just read.
			 */
			FUNC5();
			if (FUNC1(tail))
				return reserved;
		}
		return FUNC0(tail);
	}

	return true;
}