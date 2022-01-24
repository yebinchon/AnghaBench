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
struct btrfs_work {int /*<<< orphan*/  flags; int /*<<< orphan*/  (* func ) (struct btrfs_work*) ;struct __btrfs_workqueue* wq; scalar_t__ ordered_func; } ;
struct __btrfs_workqueue {int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_DONE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct __btrfs_workqueue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_work*) ; 
 int /*<<< orphan*/  FUNC3 (struct __btrfs_workqueue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_work*) ; 

__attribute__((used)) static void FUNC6(struct btrfs_work *work)
{
	struct __btrfs_workqueue *wq;
	void *wtag;
	int need_order = 0;

	/*
	 * We should not touch things inside work in the following cases:
	 * 1) after work->func() if it has no ordered_free
	 *    Since the struct is freed in work->func().
	 * 2) after setting WORK_DONE_BIT
	 *    The work may be freed in other threads almost instantly.
	 * So we save the needed things here.
	 */
	if (work->ordered_func)
		need_order = 1;
	wq = work->wq;
	/* Safe for tracepoints in case work gets freed by the callback */
	wtag = work;

	FUNC5(work);
	FUNC3(wq);
	work->func(work);
	if (need_order) {
		FUNC1(WORK_DONE_BIT, &work->flags);
		FUNC0(wq);
	}
	if (!need_order)
		FUNC4(wq->fs_info, wtag);
}