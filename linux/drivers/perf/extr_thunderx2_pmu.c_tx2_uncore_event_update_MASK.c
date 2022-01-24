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
typedef  unsigned long u32 ;
struct tx2_uncore_pmu {int type; unsigned long prorate_factor; } ;
struct hw_perf_event {int /*<<< orphan*/  prev_count; int /*<<< orphan*/  event_base; } ;
struct perf_event {int /*<<< orphan*/  count; int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
typedef  unsigned long s64 ;
typedef  enum tx2_uncore_type { ____Placeholder_tx2_uncore_type } tx2_uncore_type ;

/* Variables and functions */
 scalar_t__ DMC_EVENT_DATA_TRANSFERS ; 
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int PMU_TYPE_DMC ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tx2_uncore_pmu* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event)
{
	s64 prev, delta, new = 0;
	struct hw_perf_event *hwc = &event->hw;
	struct tx2_uncore_pmu *tx2_pmu;
	enum tx2_uncore_type type;
	u32 prorate_factor;

	tx2_pmu = FUNC3(event->pmu);
	type = tx2_pmu->type;
	prorate_factor = tx2_pmu->prorate_factor;

	new = FUNC4(hwc->event_base);
	prev = FUNC2(&hwc->prev_count, new);

	/* handles rollover of 32 bit counter */
	delta = (u32)(((1UL << 32) - prev) + new);

	/* DMC event data_transfers granularity is 16 Bytes, convert it to 64 */
	if (type == PMU_TYPE_DMC &&
			FUNC0(event) == DMC_EVENT_DATA_TRANSFERS)
		delta = delta/4;

	/* L3C and DMC has 16 and 8 interleave channels respectively.
	 * The sampled value is for channel 0 and multiplied with
	 * prorate_factor to get the count for a device.
	 */
	FUNC1(delta * prorate_factor, &event->count);
}