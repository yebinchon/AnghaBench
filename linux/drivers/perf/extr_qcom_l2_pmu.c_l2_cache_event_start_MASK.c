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
typedef  scalar_t__ u32 ;
struct hw_perf_event {int idx; scalar_t__ config_base; scalar_t__ state; } ;
struct perf_event {int /*<<< orphan*/  cpu; int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
struct cluster_pmu {int dummy; } ;

/* Variables and functions */
 scalar_t__ L2CYCLE_CTR_RAW_CODE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct cluster_pmu*,scalar_t__,scalar_t__) ; 
 struct cluster_pmu* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cluster_pmu*,struct hw_perf_event*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct perf_event *event, int flags)
{
	struct cluster_pmu *cluster;
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;
	u32 config;
	u32 event_cc, event_group;

	hwc->state = 0;

	cluster = FUNC9(FUNC11(event->pmu), event->cpu);

	FUNC10(cluster, hwc);

	if (hwc->config_base == L2CYCLE_CTR_RAW_CODE) {
		FUNC4(0);
	} else {
		config = hwc->config_base;
		event_cc    = FUNC0(config);
		event_group = FUNC1(config);

		FUNC5(idx, 0);
		FUNC7(idx, event_group);
		FUNC8(cluster, event_group, event_cc);
		FUNC6(idx);
	}

	FUNC3(idx);
	FUNC2(idx);
}