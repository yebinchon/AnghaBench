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
typedef  int /*<<< orphan*/  u64 ;
struct hw_perf_event {int /*<<< orphan*/  prev_count; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct hisi_pmu {TYPE_1__* ops; scalar_t__ counter_bits; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_counter ) (struct hisi_pmu*,struct hw_perf_event*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_pmu*,struct hw_perf_event*,int /*<<< orphan*/ ) ; 
 struct hisi_pmu* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct perf_event *event)
{
	struct hisi_pmu *hisi_pmu = FUNC3(event->pmu);
	struct hw_perf_event *hwc = &event->hw;

	/*
	 * The HiSilicon PMU counters support 32 bits or 48 bits, depending on
	 * the PMU. We reduce it to 2^(counter_bits - 1) to account for the
	 * extreme interrupt latency. So we could hopefully handle the overflow
	 * interrupt before another 2^(counter_bits - 1) events occur and the
	 * counter overtakes its previous value.
	 */
	u64 val = FUNC0(hisi_pmu->counter_bits - 1);

	FUNC1(&hwc->prev_count, val);
	/* Write start value to the hardware event counter */
	hisi_pmu->ops->write_counter(hisi_pmu, hwc, val);
}