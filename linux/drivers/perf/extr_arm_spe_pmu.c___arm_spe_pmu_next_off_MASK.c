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
typedef  unsigned long u64 ;
struct perf_output_handle {scalar_t__ head; unsigned long size; scalar_t__ wakeup; TYPE_1__* event; } ;
struct arm_spe_pmu_buf {unsigned long nr_pages; } ;
struct arm_spe_pmu {int /*<<< orphan*/  align; } ;
struct TYPE_2__ {int /*<<< orphan*/  pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  PERF_AUX_FLAG_TRUNCATED ; 
 unsigned long FUNC1 (scalar_t__,struct arm_spe_pmu_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_output_handle*,unsigned long) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_output_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_output_handle*,int /*<<< orphan*/ ) ; 
 struct arm_spe_pmu_buf* FUNC6 (struct perf_output_handle*) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 unsigned long FUNC8 (unsigned long,unsigned long) ; 
 unsigned long FUNC9 (unsigned long,int /*<<< orphan*/ ) ; 
 struct arm_spe_pmu* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC11(struct perf_output_handle *handle)
{
	struct arm_spe_pmu *spe_pmu = FUNC10(handle->event->pmu);
	struct arm_spe_pmu_buf *buf = FUNC6(handle);
	const u64 bufsize = buf->nr_pages * PAGE_SIZE;
	u64 limit = bufsize;
	u64 head, tail, wakeup;

	/*
	 * The head can be misaligned for two reasons:
	 *
	 * 1. The hardware left PMBPTR pointing to the first byte after
	 *    a record when generating a buffer management event.
	 *
	 * 2. We used perf_aux_output_skip to consume handle->size bytes
	 *    and CIRC_SPACE was used to compute the size, which always
	 *    leaves one entry free.
	 *
	 * Deal with this by padding to the next alignment boundary and
	 * moving the head index. If we run out of buffer space, we'll
	 * reduce handle->size to zero and end up reporting truncation.
	 */
	head = FUNC1(handle->head, buf);
	if (!FUNC0(head, spe_pmu->align)) {
		unsigned long delta = FUNC9(head, spe_pmu->align) - head;

		delta = FUNC3(delta, handle->size);
		FUNC2(handle, delta);
		head = FUNC1(handle->head, buf);
	}

	/* If we've run out of free space, then nothing more to do */
	if (!handle->size)
		goto no_space;

	/* Compute the tail and wakeup indices now that we've aligned head */
	tail = FUNC1(handle->head + handle->size, buf);
	wakeup = FUNC1(handle->wakeup, buf);

	/*
	 * Avoid clobbering unconsumed data. We know we have space, so
	 * if we see head == tail we know that the buffer is empty. If
	 * head > tail, then there's nothing to clobber prior to
	 * wrapping.
	 */
	if (head < tail)
		limit = FUNC7(tail, PAGE_SIZE);

	/*
	 * Wakeup may be arbitrarily far into the future. If it's not in
	 * the current generation, either we'll wrap before hitting it,
	 * or it's in the past and has been handled already.
	 *
	 * If there's a wakeup before we wrap, arrange to be woken up by
	 * the page boundary following it. Keep the tail boundary if
	 * that's lower.
	 */
	if (handle->wakeup < (handle->head + handle->size) && head <= wakeup)
		limit = FUNC3(limit, FUNC8(wakeup, PAGE_SIZE));

	if (limit > head)
		return limit;

	FUNC2(handle, handle->size);
no_space:
	FUNC5(handle, PERF_AUX_FLAG_TRUNCATED);
	FUNC4(handle, 0);
	return 0;
}