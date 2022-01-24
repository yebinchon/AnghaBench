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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  nocow_writers; scalar_t__ ro; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct btrfs_block_group_cache* FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(struct btrfs_fs_info *fs_info, u64 bytenr)
{
	struct btrfs_block_group_cache *bg;
	bool ret = true;

	bg = FUNC1(fs_info, bytenr);
	if (!bg)
		return false;

	FUNC3(&bg->lock);
	if (bg->ro)
		ret = false;
	else
		FUNC0(&bg->nocow_writers);
	FUNC4(&bg->lock);

	/* No put on block group, done by btrfs_dec_nocow_writers */
	if (!ret)
		FUNC2(bg);

	return ret;
}