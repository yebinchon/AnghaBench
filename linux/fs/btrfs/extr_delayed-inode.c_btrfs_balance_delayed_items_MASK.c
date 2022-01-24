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
struct btrfs_fs_info {int /*<<< orphan*/  delayed_workers; struct btrfs_delayed_root* delayed_root; } ;
struct btrfs_delayed_root {int /*<<< orphan*/  wait; int /*<<< orphan*/  items_seq; int /*<<< orphan*/  items; } ;

/* Variables and functions */
 int BTRFS_DELAYED_BACKGROUND ; 
 int /*<<< orphan*/  BTRFS_DELAYED_BATCH ; 
 int BTRFS_DELAYED_WRITEBACK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btrfs_delayed_root*,struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_delayed_root*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct btrfs_fs_info *fs_info)
{
	struct btrfs_delayed_root *delayed_root = fs_info->delayed_root;

	if ((FUNC0(&delayed_root->items) < BTRFS_DELAYED_BACKGROUND) ||
		FUNC1(fs_info->delayed_workers))
		return;

	if (FUNC0(&delayed_root->items) >= BTRFS_DELAYED_WRITEBACK) {
		int seq;
		int ret;

		seq = FUNC0(&delayed_root->items_seq);

		ret = FUNC2(delayed_root, fs_info, 0);
		if (ret)
			return;

		FUNC4(delayed_root->wait,
					 FUNC3(delayed_root, seq));
		return;
	}

	FUNC2(delayed_root, fs_info, BTRFS_DELAYED_BATCH);
}