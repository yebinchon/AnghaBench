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
struct hw_perf_event {int idx; } ;
struct hisi_pmu {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ HHA_EVENT_CTRL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct hisi_pmu *hha_pmu,
					struct hw_perf_event *hwc)
{
	u32 val;

	/* Enable counter index in HHA_EVENT_CTRL register */
	val = FUNC0(hha_pmu->base + HHA_EVENT_CTRL);
	val |= (1 << hwc->idx);
	FUNC1(val, hha_pmu->base + HHA_EVENT_CTRL);
}