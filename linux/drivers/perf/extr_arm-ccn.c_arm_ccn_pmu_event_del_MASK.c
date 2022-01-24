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
struct perf_event {int /*<<< orphan*/  pmu; } ;
struct TYPE_2__ {int /*<<< orphan*/  hrtimer; } ;
struct arm_ccn {TYPE_1__ dt; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 scalar_t__ FUNC0 (struct arm_ccn*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct arm_ccn* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, int flags)
{
	struct arm_ccn *ccn = FUNC4(event->pmu);

	FUNC2(event, PERF_EF_UPDATE);

	FUNC1(event);

	if (!ccn->irq && FUNC0(ccn) == 0)
		FUNC3(&ccn->dt.hrtimer);
}