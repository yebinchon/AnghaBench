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
struct perf_output_handle {int /*<<< orphan*/  head; } ;
struct arm_spe_pmu_buf {int /*<<< orphan*/  snapshot; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_SPE_BUF_PAD_BYTE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct arm_spe_pmu_buf*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_output_handle*,int) ; 
 struct arm_spe_pmu_buf* FUNC3 (struct perf_output_handle*) ; 

__attribute__((used)) static void FUNC4(struct perf_output_handle *handle, int len)
{
	struct arm_spe_pmu_buf *buf = FUNC3(handle);
	u64 head = FUNC0(handle->head, buf);

	FUNC1(buf->base + head, ARM_SPE_BUF_PAD_BYTE, len);
	if (!buf->snapshot)
		FUNC2(handle, len);
}