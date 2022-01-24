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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct hw_perf_event {scalar_t__ idx; int /*<<< orphan*/  prev_count; } ;
struct cluster_pmu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2_COUNTER_RELOAD ; 
 int /*<<< orphan*/  L2_CYCLE_COUNTER_RELOAD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ l2_cycle_ctr_idx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cluster_pmu *cluster,
				       struct hw_perf_event *hwc)
{
	u32 idx = hwc->idx;
	u64 new;

	/*
	 * We limit the max period to half the max counter value so
	 * that even in the case of extreme interrupt latency the
	 * counter will (hopefully) not wrap past its initial value.
	 */
	if (idx == l2_cycle_ctr_idx)
		new = L2_CYCLE_COUNTER_RELOAD;
	else
		new = L2_COUNTER_RELOAD;

	FUNC1(&hwc->prev_count, new);
	FUNC0(idx, new);
}