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
typedef  int u32 ;
struct perf_event {int /*<<< orphan*/  pmu; } ;
struct TYPE_2__ {unsigned long* used_mask; } ;
struct hisi_pmu {int num_counters; TYPE_1__ pmu_events; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 struct hisi_pmu* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct perf_event *event)
{
	struct hisi_pmu *hisi_pmu = FUNC2(event->pmu);
	unsigned long *used_mask = hisi_pmu->pmu_events.used_mask;
	u32 num_counters = hisi_pmu->num_counters;
	int idx;

	idx = FUNC0(used_mask, num_counters);
	if (idx == num_counters)
		return -EAGAIN;

	FUNC1(idx, used_mask);

	return idx;
}