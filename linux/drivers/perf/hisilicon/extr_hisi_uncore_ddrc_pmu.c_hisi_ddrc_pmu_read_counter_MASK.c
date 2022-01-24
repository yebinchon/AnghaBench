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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct hw_perf_event {int dummy; } ;
struct hisi_pmu {scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hw_perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_pmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static u64 FUNC5(struct hisi_pmu *ddrc_pmu,
				      struct hw_perf_event *hwc)
{
	/* Use event code as counter index */
	u32 idx = FUNC0(hwc);

	if (!FUNC3(ddrc_pmu, idx)) {
		FUNC1(ddrc_pmu->dev, "Unsupported event index:%d!\n", idx);
		return 0;
	}

	return FUNC4(ddrc_pmu->base + FUNC2(idx));
}