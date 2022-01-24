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
struct writeback_control {scalar_t__ nr_to_write; int range_start; int range_end; scalar_t__ range_cyclic; } ;
struct address_space {void* writeback_index; } ;
typedef  void* pgoff_t ;

/* Variables and functions */
 int LLONG_MAX ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct address_space*,struct writeback_control*,void*,void*,void**) ; 

int FUNC3(struct address_space *mapping,
		   struct writeback_control *wbc)
{
	pgoff_t start, end, next;
	int ret;

	FUNC0("");

	if (wbc->range_cyclic) {
		start = mapping->writeback_index;
		end = -1;
		ret = FUNC2(mapping, wbc, start, end, &next);
		if (start > 0 && wbc->nr_to_write > 0 && ret == 0)
			ret = FUNC2(mapping, wbc, 0, start,
						    &next);
		mapping->writeback_index = next;
	} else if (wbc->range_start == 0 && wbc->range_end == LLONG_MAX) {
		end = (pgoff_t)(LLONG_MAX >> PAGE_SHIFT);
		ret = FUNC2(mapping, wbc, 0, end, &next);
		if (wbc->nr_to_write > 0)
			mapping->writeback_index = next;
	} else {
		start = wbc->range_start >> PAGE_SHIFT;
		end = wbc->range_end >> PAGE_SHIFT;
		ret = FUNC2(mapping, wbc, start, end, &next);
	}

	FUNC1(" = %d", ret);
	return ret;
}