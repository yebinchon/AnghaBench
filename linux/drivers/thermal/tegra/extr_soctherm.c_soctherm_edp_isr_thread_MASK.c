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
typedef  int u32 ;
struct tegra_soctherm {scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int irq_enable; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int OC_INTR_OC1_MASK ; 
 int OC_INTR_OC2_MASK ; 
 int OC_INTR_OC3_MASK ; 
 int OC_INTR_OC4_MASK ; 
 scalar_t__ OC_INTR_STATUS ; 
 int /*<<< orphan*/  THROTTLE_OC1 ; 
 int /*<<< orphan*/  THROTTLE_OC2 ; 
 int /*<<< orphan*/  THROTTLE_OC3 ; 
 int /*<<< orphan*/  THROTTLE_OC4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (scalar_t__) ; 
 TYPE_1__ soc_irq_cdata ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_soctherm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *arg)
{
	struct tegra_soctherm *ts = arg;
	u32 st, ex, oc1, oc2, oc3, oc4;

	st = FUNC4(ts->regs + OC_INTR_STATUS);

	/* deliberately clear expected interrupts handled in SW */
	oc1 = st & OC_INTR_OC1_MASK;
	oc2 = st & OC_INTR_OC2_MASK;
	oc3 = st & OC_INTR_OC3_MASK;
	oc4 = st & OC_INTR_OC4_MASK;
	ex = oc1 | oc2 | oc3 | oc4;

	FUNC3("soctherm: OC ALARM 0x%08x\n", ex);
	if (ex) {
		FUNC7(st, ts->regs + OC_INTR_STATUS);
		st &= ~ex;

		if (oc1 && !FUNC5(THROTTLE_OC1))
			FUNC6(ts, THROTTLE_OC1, true);

		if (oc2 && !FUNC5(THROTTLE_OC2))
			FUNC6(ts, THROTTLE_OC2, true);

		if (oc3 && !FUNC5(THROTTLE_OC3))
			FUNC6(ts, THROTTLE_OC3, true);

		if (oc4 && !FUNC5(THROTTLE_OC4))
			FUNC6(ts, THROTTLE_OC4, true);

		if (oc1 && soc_irq_cdata.irq_enable & FUNC0(0))
			FUNC1(
				FUNC2(soc_irq_cdata.domain, 0));

		if (oc2 && soc_irq_cdata.irq_enable & FUNC0(1))
			FUNC1(
				FUNC2(soc_irq_cdata.domain, 1));

		if (oc3 && soc_irq_cdata.irq_enable & FUNC0(2))
			FUNC1(
				FUNC2(soc_irq_cdata.domain, 2));

		if (oc4 && soc_irq_cdata.irq_enable & FUNC0(3))
			FUNC1(
				FUNC2(soc_irq_cdata.domain, 3));
	}

	if (st) {
		FUNC3("soctherm: Ignored unexpected OC ALARM 0x%08x\n", st);
		FUNC7(st, ts->regs + OC_INTR_STATUS);
	}

	return IRQ_HANDLED;
}