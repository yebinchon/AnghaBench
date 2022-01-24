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
struct ddr_pmu {int /*<<< orphan*/  id; int /*<<< orphan*/  pmu; int /*<<< orphan*/  irq; int /*<<< orphan*/  node; int /*<<< orphan*/  cpuhp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ddr_ida ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ddr_pmu* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct ddr_pmu *pmu = FUNC4(pdev);

	FUNC0(pmu->cpuhp_state, &pmu->node);
	FUNC2(pmu->irq, NULL);

	FUNC3(&pmu->pmu);

	FUNC1(&ddr_ida, pmu->id);
	return 0;
}