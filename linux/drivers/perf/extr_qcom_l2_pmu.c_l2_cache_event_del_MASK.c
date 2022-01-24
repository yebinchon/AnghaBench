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
struct hw_perf_event {int idx; } ;
struct perf_event {int /*<<< orphan*/  cpu; int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
struct cluster_pmu {int /*<<< orphan*/ ** events; } ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 struct cluster_pmu* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cluster_pmu*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, int flags)
{
	struct hw_perf_event *hwc = &event->hw;
	struct cluster_pmu *cluster;
	int idx = hwc->idx;

	cluster = FUNC0(FUNC4(event->pmu), event->cpu);

	FUNC2(event, flags | PERF_EF_UPDATE);
	cluster->events[idx] = NULL;
	FUNC1(cluster, event);

	FUNC3(event);
}