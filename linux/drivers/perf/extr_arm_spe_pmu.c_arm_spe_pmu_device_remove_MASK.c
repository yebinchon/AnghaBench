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
struct arm_spe_pmu {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arm_spe_pmu*) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_spe_pmu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct arm_spe_pmu* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct arm_spe_pmu *spe_pmu = FUNC3(pdev);

	FUNC1(spe_pmu);
	FUNC0(spe_pmu);
	FUNC2(spe_pmu->handle);
	return 0;
}