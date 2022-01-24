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
struct btrfs_fs_info {int /*<<< orphan*/  unused_bgs_lock; int /*<<< orphan*/  unused_bgs; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  bg_list; struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_block_group_cache*) ; 

void FUNC6(struct btrfs_block_group_cache *bg)
{
	struct btrfs_fs_info *fs_info = bg->fs_info;

	FUNC3(&fs_info->unused_bgs_lock);
	if (FUNC2(&bg->bg_list)) {
		FUNC0(bg);
		FUNC5(bg);
		FUNC1(&bg->bg_list, &fs_info->unused_bgs);
	}
	FUNC4(&fs_info->unused_bgs_lock);
}