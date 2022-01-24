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
struct hw_perf_event {int idx; scalar_t__ config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cluster_pmu {int /*<<< orphan*/  used_groups; int /*<<< orphan*/  used_counters; } ;

/* Variables and functions */
 scalar_t__ L2CYCLE_CTR_RAW_CODE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cluster_pmu *cluster,
				      struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;

	FUNC1(idx, cluster->used_counters);
	if (hwc->config_base != L2CYCLE_CTR_RAW_CODE)
		FUNC1(FUNC0(hwc->config_base), cluster->used_groups);
}