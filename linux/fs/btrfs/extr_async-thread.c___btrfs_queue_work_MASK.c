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
struct btrfs_work {int /*<<< orphan*/  normal_work; int /*<<< orphan*/  ordered_list; scalar_t__ ordered_func; struct __btrfs_workqueue* wq; } ;
struct __btrfs_workqueue {int /*<<< orphan*/  normal_wq; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  ordered_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct __btrfs_workqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_work*) ; 

__attribute__((used)) static inline void FUNC6(struct __btrfs_workqueue *wq,
				      struct btrfs_work *work)
{
	unsigned long flags;

	work->wq = wq;
	FUNC4(wq);
	if (work->ordered_func) {
		FUNC2(&wq->list_lock, flags);
		FUNC0(&work->ordered_list, &wq->ordered_list);
		FUNC3(&wq->list_lock, flags);
	}
	FUNC5(work);
	FUNC1(wq->normal_wq, &work->normal_work);
}