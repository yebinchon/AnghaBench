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
struct btrfs_block_group_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCARD ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_group_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_block_group_cache*,int /*<<< orphan*/ ,int) ; 
 struct btrfs_block_group_cache* FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_block_group_cache*) ; 
 scalar_t__ FUNC6 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_block_group_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct btrfs_fs_info *fs_info,
					u64 start, u64 len,
					int pin, int delalloc)
{
	struct btrfs_block_group_cache *cache;
	int ret = 0;

	cache = FUNC4(fs_info, start);
	if (!cache) {
		FUNC2(fs_info, "Unable to find block group for %llu",
			  start);
		return -ENOSPC;
	}

	if (pin)
		FUNC7(cache, start, len, 1);
	else {
		if (FUNC6(fs_info, DISCARD))
			ret = FUNC1(fs_info, start, len, NULL);
		FUNC0(cache, start, len);
		FUNC3(cache, len, delalloc);
		FUNC8(fs_info, start, len);
	}

	FUNC5(cache);
	return ret;
}