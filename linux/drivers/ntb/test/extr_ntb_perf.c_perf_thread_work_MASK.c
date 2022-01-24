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
struct work_struct {int dummy; } ;
struct perf_thread {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_thread*) ; 
 int FUNC1 (struct perf_thread*) ; 
 int FUNC2 (struct perf_thread*) ; 
 int FUNC3 (struct perf_thread*) ; 
 struct perf_thread* FUNC4 (struct work_struct*) ; 

__attribute__((used)) static void FUNC5(struct work_struct *work)
{
	struct perf_thread *pthr = FUNC4(work);
	int ret;

	/*
	 * Perform stages in compliance with use_dma flag value.
	 * Test status is changed only if error happened, otherwise
	 * status -ENODATA is kept while test is on-fly. Results
	 * synchronization is performed only if test fininshed
	 * without an error or interruption.
	 */
	ret = FUNC1(pthr);
	if (ret) {
		pthr->status = ret;
		return;
	}

	ret = FUNC2(pthr);
	if (ret) {
		pthr->status = ret;
		goto err_clear_test;
	}

	pthr->status = FUNC3(pthr);

err_clear_test:
	FUNC0(pthr);
}