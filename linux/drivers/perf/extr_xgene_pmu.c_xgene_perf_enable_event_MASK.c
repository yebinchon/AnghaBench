#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct xgene_pmu_dev {TYPE_1__* inf; struct xgene_pmu* parent; } ;
struct xgene_pmu {TYPE_2__* ops; } ;
struct perf_event {int /*<<< orphan*/  pmu; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* enable_counter_int ) (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* enable_counter ) (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_agent1msk ) (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_agentmsk ) (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_evttype ) (struct xgene_pmu_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 scalar_t__ PMU_TYPE_IOB ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_pmu_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ; 
 struct xgene_pmu_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct perf_event *event)
{
	struct xgene_pmu_dev *pmu_dev = FUNC9(event->pmu);
	struct xgene_pmu *xgene_pmu = pmu_dev->parent;

	xgene_pmu->ops->write_evttype(pmu_dev, FUNC2(event),
				      FUNC3(event));
	xgene_pmu->ops->write_agentmsk(pmu_dev, ~((u32)FUNC1(event)));
	if (pmu_dev->inf->type == PMU_TYPE_IOB)
		xgene_pmu->ops->write_agent1msk(pmu_dev,
						~((u32)FUNC0(event)));

	xgene_pmu->ops->enable_counter(pmu_dev, FUNC2(event));
	xgene_pmu->ops->enable_counter_int(pmu_dev, FUNC2(event));
}