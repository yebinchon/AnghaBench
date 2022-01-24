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
typedef  int u32 ;
struct hw_perf_event {int dummy; } ;
struct hisi_pmu {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ DDRC_EVENT_CTRL ; 
 int FUNC0 (struct hw_perf_event*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct hisi_pmu *ddrc_pmu,
					  struct hw_perf_event *hwc)
{
	u32 val;

	/* Clear counter index(event code) in DDRC_EVENT_CTRL register */
	val = FUNC1(ddrc_pmu->base + DDRC_EVENT_CTRL);
	val &= ~(1 << FUNC0(hwc));
	FUNC2(val, ddrc_pmu->base + DDRC_EVENT_CTRL);
}