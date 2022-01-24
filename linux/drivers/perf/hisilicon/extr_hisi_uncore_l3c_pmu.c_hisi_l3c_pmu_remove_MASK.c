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
struct platform_device {int dummy; } ;
struct hisi_pmu {int /*<<< orphan*/  node; int /*<<< orphan*/  pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_PERF_ARM_HISI_L3_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hisi_pmu* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct hisi_pmu *l3c_pmu = FUNC2(pdev);

	FUNC1(&l3c_pmu->pmu);
	FUNC0(CPUHP_AP_PERF_ARM_HISI_L3_ONLINE,
				    &l3c_pmu->node);

	return 0;
}