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
typedef  scalar_t__ u64 ;
struct perf_output_handle {scalar_t__ head; } ;
struct arm_spe_pmu_buf {scalar_t__ snapshot; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,struct arm_spe_pmu_buf*) ; 
 int /*<<< orphan*/  SYS_PMBPTR_EL1 ; 
 int /*<<< orphan*/  FUNC1 (struct perf_output_handle*,scalar_t__) ; 
 struct arm_spe_pmu_buf* FUNC2 (struct perf_output_handle*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct perf_output_handle *handle)
{
	struct arm_spe_pmu_buf *buf = FUNC2(handle);
	u64 offset, size;

	offset = FUNC3(SYS_PMBPTR_EL1) - (u64)buf->base;
	size = offset - FUNC0(handle->head, buf);

	if (buf->snapshot)
		handle->head = offset;

	FUNC1(handle, size);
}