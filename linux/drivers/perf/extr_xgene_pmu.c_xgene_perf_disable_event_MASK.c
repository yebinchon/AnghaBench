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
struct xgene_pmu_dev {struct xgene_pmu* parent; } ;
struct xgene_pmu {TYPE_1__* ops; } ;
struct perf_event {int /*<<< orphan*/  pmu; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_counter_int ) (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disable_counter ) (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_pmu_dev*,int /*<<< orphan*/ ) ; 
 struct xgene_pmu_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event)
{
	struct xgene_pmu_dev *pmu_dev = FUNC3(event->pmu);
	struct xgene_pmu *xgene_pmu = pmu_dev->parent;

	xgene_pmu->ops->disable_counter(pmu_dev, FUNC0(event));
	xgene_pmu->ops->disable_counter_int(pmu_dev, FUNC0(event));
}