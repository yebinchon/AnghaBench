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
struct btrfs_block_group_cache {int /*<<< orphan*/  nocow_writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_group_cache*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct btrfs_block_group_cache* FUNC2 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct btrfs_fs_info *fs_info, u64 bytenr)
{
	struct btrfs_block_group_cache *bg;

	bg = FUNC2(fs_info, bytenr);
	FUNC0(bg);
	if (FUNC1(&bg->nocow_writers))
		FUNC4(&bg->nocow_writers);
	/*
	 * Once for our lookup and once for the lookup done by a previous call
	 * to btrfs_inc_nocow_writers()
	 */
	FUNC3(bg);
	FUNC3(bg);
}