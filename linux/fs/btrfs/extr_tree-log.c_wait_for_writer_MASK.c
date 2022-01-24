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
struct btrfs_root {int /*<<< orphan*/  log_writer_wait; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/  log_writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC7(struct btrfs_root *root)
{
	FUNC0(wait);

	for (;;) {
		FUNC5(&root->log_writer_wait, &wait,
				TASK_UNINTERRUPTIBLE);
		if (!FUNC1(&root->log_writers))
			break;

		FUNC4(&root->log_mutex);
		FUNC6();
		FUNC3(&root->log_mutex);
	}
	FUNC2(&root->log_writer_wait, &wait);
}