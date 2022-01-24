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
struct nd_region {unsigned int num_lanes; int /*<<< orphan*/  lane; } ;
struct nd_percpu_lane {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 unsigned int FUNC0 () ; 
 unsigned int nr_cpu_ids ; 
 struct nd_percpu_lane* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

unsigned int FUNC3(struct nd_region *nd_region)
{
	unsigned int cpu, lane;

	cpu = FUNC0();
	if (nd_region->num_lanes < nr_cpu_ids) {
		struct nd_percpu_lane *ndl_lock, *ndl_count;

		lane = cpu % nd_region->num_lanes;
		ndl_count = FUNC1(nd_region->lane, cpu);
		ndl_lock = FUNC1(nd_region->lane, lane);
		if (ndl_count->count++ == 0)
			FUNC2(&ndl_lock->lock);
	} else
		lane = cpu;

	return lane;
}