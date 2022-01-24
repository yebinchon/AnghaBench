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
struct btrfs_root {int /*<<< orphan*/  will_be_snapshotted; TYPE_1__* subv_writers; } ;
struct TYPE_2__ {int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct btrfs_root *root)
{
	if (FUNC0(&root->will_be_snapshotted))
		return 0;

	FUNC2(&root->subv_writers->counter);
	/*
	 * Make sure counter is updated before we check for snapshot creation.
	 */
	FUNC3();
	if (FUNC0(&root->will_be_snapshotted)) {
		FUNC1(root);
		return 0;
	}
	return 1;
}