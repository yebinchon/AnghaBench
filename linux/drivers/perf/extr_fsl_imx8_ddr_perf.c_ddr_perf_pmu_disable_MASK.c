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
struct pmu {int dummy; } ;
struct ddr_pmu {int /*<<< orphan*/ ** events; } ;

/* Variables and functions */
 size_t EVENT_CYCLES_COUNTER ; 
 int /*<<< orphan*/  EVENT_CYCLES_ID ; 
 int /*<<< orphan*/  FUNC0 (struct ddr_pmu*,int /*<<< orphan*/ ,size_t,int) ; 
 struct ddr_pmu* FUNC1 (struct pmu*) ; 

__attribute__((used)) static void FUNC2(struct pmu *pmu)
{
	struct ddr_pmu *ddr_pmu = FUNC1(pmu);

	if (ddr_pmu->events[EVENT_CYCLES_COUNTER] == NULL)
		FUNC0(ddr_pmu,
				      EVENT_CYCLES_ID,
				      EVENT_CYCLES_COUNTER,
				      false);
}