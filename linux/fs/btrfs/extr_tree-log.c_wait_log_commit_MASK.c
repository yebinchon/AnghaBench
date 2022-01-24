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
struct btrfs_root {int log_transid_committed; int /*<<< orphan*/ * log_commit_wait; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/ * log_commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC7(struct btrfs_root *root, int transid)
{
	FUNC0(wait);
	int index = transid % 2;

	/*
	 * we only allow two pending log transactions at a time,
	 * so we know that if ours is more than 2 older than the
	 * current transaction, we're done
	 */
	for (;;) {
		FUNC5(&root->log_commit_wait[index],
				&wait, TASK_UNINTERRUPTIBLE);

		if (!(root->log_transid_committed < transid &&
		      FUNC1(&root->log_commit[index])))
			break;

		FUNC4(&root->log_mutex);
		FUNC6();
		FUNC3(&root->log_mutex);
	}
	FUNC2(&root->log_commit_wait[index], &wait);
}