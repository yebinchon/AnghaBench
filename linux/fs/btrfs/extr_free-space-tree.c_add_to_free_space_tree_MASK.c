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
struct btrfs_trans_handle {int /*<<< orphan*/  fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  free_space_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FREE_SPACE_TREE ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*,int) ; 
 struct btrfs_path* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_block_group_cache* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct btrfs_trans_handle *trans,
			   u64 start, u64 size)
{
	struct btrfs_block_group_cache *block_group;
	struct btrfs_path *path;
	int ret;

	if (!FUNC5(trans->fs_info, FREE_SPACE_TREE))
		return 0;

	path = FUNC3();
	if (!path) {
		ret = -ENOMEM;
		goto out;
	}

	block_group = FUNC6(trans->fs_info, start);
	if (!block_group) {
		FUNC0(0);
		ret = -ENOENT;
		goto out;
	}

	FUNC8(&block_group->free_space_lock);
	ret = FUNC1(trans, block_group, path, start, size);
	FUNC9(&block_group->free_space_lock);

	FUNC7(block_group);
out:
	FUNC4(path);
	if (ret)
		FUNC2(trans, ret);
	return ret;
}