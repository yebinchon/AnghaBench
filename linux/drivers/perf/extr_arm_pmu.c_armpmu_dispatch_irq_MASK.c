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
typedef  scalar_t__ u64 ;
struct arm_pmu {int (* handle_irq ) (struct arm_pmu*) ;} ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQ_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (struct arm_pmu*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev)
{
	struct arm_pmu *armpmu;
	int ret;
	u64 start_clock, finish_clock;

	/*
	 * we request the IRQ with a (possibly percpu) struct arm_pmu**, but
	 * the handlers expect a struct arm_pmu*. The percpu_irq framework will
	 * do any necessary shifting, we just need to perform the first
	 * dereference.
	 */
	armpmu = *(void **)dev;
	if (FUNC0(!armpmu))
		return IRQ_NONE;

	start_clock = FUNC2();
	ret = armpmu->handle_irq(armpmu);
	finish_clock = FUNC2();

	FUNC1(finish_clock - start_clock);
	return ret;
}