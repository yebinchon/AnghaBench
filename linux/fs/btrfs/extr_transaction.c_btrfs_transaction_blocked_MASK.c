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
struct btrfs_transaction {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  trans_lock; struct btrfs_transaction* running_transaction; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct btrfs_fs_info *info)
{
	struct btrfs_transaction *trans;
	int ret = 0;

	FUNC1(&info->trans_lock);
	trans = info->running_transaction;
	if (trans)
		ret = FUNC0(trans);
	FUNC2(&info->trans_lock);
	return ret;
}