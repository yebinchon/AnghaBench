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
struct arm_spe_pmu {int /*<<< orphan*/  handle; int /*<<< orphan*/  irq; int /*<<< orphan*/  hotplug_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  arm_spe_pmu_online ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct arm_spe_pmu *spe_pmu)
{
	FUNC0(arm_spe_pmu_online, &spe_pmu->hotplug_node);
	FUNC1(spe_pmu->irq, spe_pmu->handle);
}