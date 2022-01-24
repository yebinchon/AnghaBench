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
struct writeback_control {int range_end; int nr_to_write; } ;
struct page {int /*<<< orphan*/  mapping; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct writeback_control*,struct page*,int) ; 

int FUNC3(struct page *page, struct writeback_control *wbc)
{
	int ret;

	FUNC0("{%lx},", page->index);

	ret = FUNC2(page->mapping, wbc, page,
					      wbc->range_end >> PAGE_SHIFT);
	if (ret < 0) {
		FUNC1(" = %d", ret);
		return 0;
	}

	wbc->nr_to_write -= ret;

	FUNC1(" = 0");
	return 0;
}