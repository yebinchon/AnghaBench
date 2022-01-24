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
struct l3cache_pmu {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_CNTENCLR_RESET ; 
 int /*<<< orphan*/  BC_ENABLE ; 
 int /*<<< orphan*/  BC_GANG_RESET ; 
 int /*<<< orphan*/  BC_INTENCLR_RESET ; 
 int /*<<< orphan*/  BC_IRQCTL_RESET ; 
 int /*<<< orphan*/  BC_RESET ; 
 int /*<<< orphan*/  BC_SATROLL_CR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ L3_HML3_PM_CR ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ L3_HML3_PM_FILTRA ; 
 scalar_t__ L3_HML3_PM_FILTRAM ; 
 scalar_t__ L3_HML3_PM_FILTRB ; 
 scalar_t__ L3_HML3_PM_FILTRBM ; 
 scalar_t__ L3_HML3_PM_FILTRC ; 
 scalar_t__ L3_HML3_PM_FILTRCM ; 
 scalar_t__ L3_M_BC_CNTENCLR ; 
 scalar_t__ L3_M_BC_CR ; 
 scalar_t__ L3_M_BC_GANG ; 
 scalar_t__ L3_M_BC_INTENCLR ; 
 scalar_t__ L3_M_BC_IRQCTL ; 
 scalar_t__ L3_M_BC_OVSR ; 
 scalar_t__ L3_M_BC_SATROLL_CR ; 
 int L3_NUM_COUNTERS ; 
 int /*<<< orphan*/  PMCNT_RESET ; 
 int /*<<< orphan*/  PMOVSRCLR_RESET ; 
 int /*<<< orphan*/  PM_CR_RESET ; 
 int /*<<< orphan*/  PM_FLTR_RESET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct l3cache_pmu *l3pmu)
{
	int i;

	FUNC4(BC_RESET, l3pmu->regs + L3_M_BC_CR);

	/*
	 * Use writel for the first programming command to ensure the basic
	 * counter unit is stopped before proceeding
	 */
	FUNC3(BC_SATROLL_CR_RESET, l3pmu->regs + L3_M_BC_SATROLL_CR);

	FUNC4(BC_CNTENCLR_RESET, l3pmu->regs + L3_M_BC_CNTENCLR);
	FUNC4(BC_INTENCLR_RESET, l3pmu->regs + L3_M_BC_INTENCLR);
	FUNC4(PMOVSRCLR_RESET, l3pmu->regs + L3_M_BC_OVSR);
	FUNC4(BC_GANG_RESET, l3pmu->regs + L3_M_BC_GANG);
	FUNC4(BC_IRQCTL_RESET, l3pmu->regs + L3_M_BC_IRQCTL);
	FUNC4(PM_CR_RESET, l3pmu->regs + L3_HML3_PM_CR);

	for (i = 0; i < L3_NUM_COUNTERS; ++i) {
		FUNC4(PMCNT_RESET, l3pmu->regs + FUNC1(i));
		FUNC4(FUNC0(0), l3pmu->regs + FUNC2(i));
	}

	FUNC4(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRA);
	FUNC4(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRAM);
	FUNC4(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRB);
	FUNC4(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRBM);
	FUNC4(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRC);
	FUNC4(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRCM);

	/*
	 * Use writel here to ensure all programming commands are done
	 *  before proceeding
	 */
	FUNC3(BC_ENABLE, l3pmu->regs + L3_M_BC_CR);
}