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
struct hw_perf_event {int /*<<< orphan*/  idx; } ;
struct hisi_pmu {scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_pmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static u64 FUNC4(struct hisi_pmu *l3c_pmu,
				     struct hw_perf_event *hwc)
{
	u32 idx = hwc->idx;

	if (!FUNC2(l3c_pmu, idx)) {
		FUNC0(l3c_pmu->dev, "Unsupported event index:%d!\n", idx);
		return 0;
	}

	/* Read 64-bits and the upper 16 bits are RAZ */
	return FUNC3(l3c_pmu->base + FUNC1(idx));
}