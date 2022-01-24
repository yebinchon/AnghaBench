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
struct intel_soc_dts_sensors {int /*<<< orphan*/  intr_notify_lock; TYPE_1__* soc_dts; } ;
struct TYPE_2__ {int /*<<< orphan*/  tzone; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_MBI_UNIT_PMC ; 
 int /*<<< orphan*/  MBI_REG_READ ; 
 int /*<<< orphan*/  MBI_REG_WRITE ; 
 int /*<<< orphan*/  SOC_DTS_OFFSET_PTMC ; 
 int /*<<< orphan*/  SOC_DTS_OFFSET_PTTSS ; 
 int SOC_DTS_PTMC_APIC_DEASSERT_BIT ; 
 int SOC_DTS_TRIP_MASK ; 
 int SOC_MAX_DTS_SENSORS ; 
 int /*<<< orphan*/  THERMAL_EVENT_UNSPECIFIED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct intel_soc_dts_sensors *sensors)
{
	u32 sticky_out;
	int status;
	u32 ptmc_out;
	unsigned long flags;

	FUNC3(&sensors->intr_notify_lock, flags);

	status = FUNC0(BT_MBI_UNIT_PMC, MBI_REG_READ,
			       SOC_DTS_OFFSET_PTMC, &ptmc_out);
	ptmc_out |= SOC_DTS_PTMC_APIC_DEASSERT_BIT;
	status = FUNC1(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
				SOC_DTS_OFFSET_PTMC, ptmc_out);

	status = FUNC0(BT_MBI_UNIT_PMC, MBI_REG_READ,
			       SOC_DTS_OFFSET_PTTSS, &sticky_out);
	FUNC2("status %d PTTSS %x\n", status, sticky_out);
	if (sticky_out & SOC_DTS_TRIP_MASK) {
		int i;
		/* reset sticky bit */
		status = FUNC1(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
					SOC_DTS_OFFSET_PTTSS, sticky_out);
		FUNC4(&sensors->intr_notify_lock, flags);

		for (i = 0; i < SOC_MAX_DTS_SENSORS; ++i) {
			FUNC2("TZD update for zone %d\n", i);
			FUNC5(sensors->soc_dts[i].tzone,
						   THERMAL_EVENT_UNSPECIFIED);
		}
	} else
		FUNC4(&sensors->intr_notify_lock, flags);
}