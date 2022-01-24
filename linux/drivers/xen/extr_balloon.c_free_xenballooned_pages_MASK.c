#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_2__ {int target_unpopulated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  balloon_mutex ; 
 TYPE_1__ balloon_stats ; 
 int /*<<< orphan*/  balloon_worker ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(int nr_pages, struct page **pages)
{
	int i;

	FUNC2(&balloon_mutex);

	for (i = 0; i < nr_pages; i++) {
		if (pages[i])
			FUNC0(pages[i]);
	}

	balloon_stats.target_unpopulated -= nr_pages;

	/* The balloon may be too large now. Shrink it if needed. */
	if (FUNC1())
		FUNC4(&balloon_worker, 0);

	FUNC3(&balloon_mutex);
}