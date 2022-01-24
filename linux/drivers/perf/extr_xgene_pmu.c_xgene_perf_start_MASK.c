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
typedef  int /*<<< orphan*/  u64 ;
struct xgene_pmu_dev {struct xgene_pmu* parent; } ;
struct xgene_pmu {TYPE_1__* ops; } ;
struct hw_perf_event {int state; int /*<<< orphan*/  prev_count; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_counter ) (struct xgene_pmu_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int PERF_EF_RELOAD ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_pmu_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xgene_pmu_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event, int flags)
{
	struct xgene_pmu_dev *pmu_dev = FUNC5(event->pmu);
	struct xgene_pmu *xgene_pmu = pmu_dev->parent;
	struct hw_perf_event *hw = &event->hw;

	if (FUNC1(!(hw->state & PERF_HES_STOPPED)))
		return;

	FUNC1(!(hw->state & PERF_HES_UPTODATE));
	hw->state = 0;

	FUNC7(event);

	if (flags & PERF_EF_RELOAD) {
		u64 prev_raw_count =  FUNC2(&hw->prev_count);

		xgene_pmu->ops->write_counter(pmu_dev, FUNC0(event),
					      prev_raw_count);
	}

	FUNC6(event);
	FUNC3(event);
}