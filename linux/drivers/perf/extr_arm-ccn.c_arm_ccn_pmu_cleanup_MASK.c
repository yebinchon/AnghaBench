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
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  pmu; scalar_t__ base; int /*<<< orphan*/  node; } ;
struct arm_ccn {int num_xps; TYPE_2__ dt; TYPE_1__* xp; scalar_t__ irq; } ;
struct TYPE_3__ {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CCN_DT_PMCR ; 
 scalar_t__ CCN_XP_DT_CONTROL ; 
 int /*<<< orphan*/  CPUHP_AP_PERF_ARM_CCN_ONLINE ; 
 int /*<<< orphan*/  arm_ccn_pmu_ida ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct arm_ccn *ccn)
{
	int i;

	FUNC0(CPUHP_AP_PERF_ARM_CCN_ONLINE,
					    &ccn->dt.node);
	if (ccn->irq)
		FUNC2(ccn->irq, NULL);
	for (i = 0; i < ccn->num_xps; i++)
		FUNC4(0, ccn->xp[i].base + CCN_XP_DT_CONTROL);
	FUNC4(0, ccn->dt.base + CCN_DT_PMCR);
	FUNC3(&ccn->dt.pmu);
	FUNC1(&arm_ccn_pmu_ida, ccn->dt.id);
}