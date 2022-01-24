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

/* Variables and functions */
 unsigned int FLOW_CTRL_CSR_ENABLE ; 
 unsigned int FLOW_CTRL_CSR_EVENT_FLAG ; 
 unsigned int FLOW_CTRL_CSR_INTR_FLAG ; 
#define  TEGRA114 131 
#define  TEGRA124 130 
#define  TEGRA20 129 
 unsigned int TEGRA20_FLOW_CTRL_CSR_WFE_BITMAP ; 
 unsigned int TEGRA20_FLOW_CTRL_CSR_WFE_CPU0 ; 
 unsigned int TEGRA20_FLOW_CTRL_CSR_WFI_BITMAP ; 
#define  TEGRA30 128 
 unsigned int TEGRA30_FLOW_CTRL_CSR_WFE_BITMAP ; 
 unsigned int TEGRA30_FLOW_CTRL_CSR_WFI_BITMAP ; 
 unsigned int TEGRA30_FLOW_CTRL_CSR_WFI_CPU0 ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

void FUNC4(unsigned int cpuid)
{
	unsigned int reg;
	int i;

	reg = FUNC0(cpuid);
	switch (FUNC3()) {
	case TEGRA20:
		/* clear wfe bitmap */
		reg &= ~TEGRA20_FLOW_CTRL_CSR_WFE_BITMAP;
		/* clear wfi bitmap */
		reg &= ~TEGRA20_FLOW_CTRL_CSR_WFI_BITMAP;
		/* pwr gating on wfe */
		reg |= TEGRA20_FLOW_CTRL_CSR_WFE_CPU0 << cpuid;
		break;
	case TEGRA30:
	case TEGRA114:
	case TEGRA124:
		/* clear wfe bitmap */
		reg &= ~TEGRA30_FLOW_CTRL_CSR_WFE_BITMAP;
		/* clear wfi bitmap */
		reg &= ~TEGRA30_FLOW_CTRL_CSR_WFI_BITMAP;
		/* pwr gating on wfi */
		reg |= TEGRA30_FLOW_CTRL_CSR_WFI_CPU0 << cpuid;
		break;
	}
	reg |= FLOW_CTRL_CSR_INTR_FLAG;			/* clear intr flag */
	reg |= FLOW_CTRL_CSR_EVENT_FLAG;		/* clear event flag */
	reg |= FLOW_CTRL_CSR_ENABLE;			/* pwr gating */
	FUNC1(cpuid, reg);

	for (i = 0; i < FUNC2(); i++) {
		if (i == cpuid)
			continue;
		reg = FUNC0(i);
		reg |= FLOW_CTRL_CSR_EVENT_FLAG;
		reg |= FLOW_CTRL_CSR_INTR_FLAG;
		FUNC1(i, reg);
	}
}