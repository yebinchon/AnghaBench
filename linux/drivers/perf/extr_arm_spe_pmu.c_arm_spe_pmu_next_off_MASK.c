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
typedef  scalar_t__ u64 ;
struct perf_output_handle {int /*<<< orphan*/  head; TYPE_1__* event; } ;
struct arm_spe_pmu_buf {int dummy; } ;
struct arm_spe_pmu {scalar_t__ max_record_sz; } ;
struct TYPE_2__ {int /*<<< orphan*/  pmu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct arm_spe_pmu_buf*) ; 
 scalar_t__ FUNC1 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_output_handle*,scalar_t__) ; 
 struct arm_spe_pmu_buf* FUNC3 (struct perf_output_handle*) ; 
 struct arm_spe_pmu* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC5(struct perf_output_handle *handle)
{
	struct arm_spe_pmu_buf *buf = FUNC3(handle);
	struct arm_spe_pmu *spe_pmu = FUNC4(handle->event->pmu);
	u64 limit = FUNC1(handle);
	u64 head = FUNC0(handle->head, buf);

	/*
	 * If the head has come too close to the end of the buffer,
	 * then pad to the end and recompute the limit.
	 */
	if (limit && (limit - head < spe_pmu->max_record_sz)) {
		FUNC2(handle, limit - head);
		limit = FUNC1(handle);
	}

	return limit;
}