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
struct ashmem_range {int /*<<< orphan*/  unpinned; } ;

/* Variables and functions */
 int /*<<< orphan*/  ashmem_range_cachep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ashmem_range*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ashmem_range*) ; 
 scalar_t__ FUNC3 (struct ashmem_range*) ; 

__attribute__((used)) static void FUNC4(struct ashmem_range *range)
{
	FUNC1(&range->unpinned);
	if (FUNC3(range))
		FUNC2(range);
	FUNC0(ashmem_range_cachep, range);
}