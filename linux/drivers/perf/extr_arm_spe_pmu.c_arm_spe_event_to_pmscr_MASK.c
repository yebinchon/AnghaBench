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
typedef  int u64 ;
struct perf_event_attr {int /*<<< orphan*/  exclude_kernel; int /*<<< orphan*/  exclude_user; } ;
struct perf_event {struct perf_event_attr attr; } ;

/* Variables and functions */
 int FUNC0 (struct perf_event_attr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CONFIG_PID_IN_CONTEXTIDR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_PMSCR_EL1_CX_SHIFT ; 
 int /*<<< orphan*/  SYS_PMSCR_EL1_E0SPE_SHIFT ; 
 int /*<<< orphan*/  SYS_PMSCR_EL1_E1SPE_SHIFT ; 
 int SYS_PMSCR_EL1_PA_SHIFT ; 
 int SYS_PMSCR_EL1_PCT_SHIFT ; 
 int SYS_PMSCR_EL1_TS_SHIFT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pa_enable ; 
 int /*<<< orphan*/  pct_enable ; 
 int /*<<< orphan*/  ts_enable ; 

__attribute__((used)) static u64 FUNC4(struct perf_event *event)
{
	struct perf_event_attr *attr = &event->attr;
	u64 reg = 0;

	reg |= FUNC0(attr, ts_enable) << SYS_PMSCR_EL1_TS_SHIFT;
	reg |= FUNC0(attr, pa_enable) << SYS_PMSCR_EL1_PA_SHIFT;
	reg |= FUNC0(attr, pct_enable) << SYS_PMSCR_EL1_PCT_SHIFT;

	if (!attr->exclude_user)
		reg |= FUNC1(SYS_PMSCR_EL1_E0SPE_SHIFT);

	if (!attr->exclude_kernel)
		reg |= FUNC1(SYS_PMSCR_EL1_E1SPE_SHIFT);

	if (FUNC2(CONFIG_PID_IN_CONTEXTIDR) && FUNC3(CAP_SYS_ADMIN))
		reg |= FUNC1(SYS_PMSCR_EL1_CX_SHIFT);

	return reg;
}