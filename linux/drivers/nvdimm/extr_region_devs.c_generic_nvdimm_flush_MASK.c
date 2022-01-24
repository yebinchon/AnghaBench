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
struct nd_region_data {int dummy; } ;
struct nd_region {int ndr_mappings; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 struct nd_region_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flush_idx ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct nd_region_data*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

int FUNC7(struct nd_region *nd_region)
{
	struct nd_region_data *ndrd = FUNC0(&nd_region->dev);
	int i, idx;

	/*
	 * Try to encourage some diversity in flush hint addresses
	 * across cpus assuming a limited number of flush hints.
	 */
	idx = FUNC4(flush_idx);
	idx = FUNC3(flush_idx, FUNC1(current->pid + idx, 8));

	/*
	 * The first wmb() is needed to 'sfence' all previous writes
	 * such that they are architecturally visible for the platform
	 * buffer flush.  Note that we've already arranged for pmem
	 * writes to avoid the cache via memcpy_flushcache().  The final
	 * wmb() ensures ordering for the NVDIMM flush write.
	 */
	FUNC5();
	for (i = 0; i < nd_region->ndr_mappings; i++)
		if (FUNC2(ndrd, i, 0))
			FUNC6(1, FUNC2(ndrd, i, idx));
	FUNC5();

	return 0;
}