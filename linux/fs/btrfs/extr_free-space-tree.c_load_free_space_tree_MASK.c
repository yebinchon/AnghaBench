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
typedef  int u32 ;
struct btrfs_path {int skip_locking; int search_commit_root; int /*<<< orphan*/ * nodes; int /*<<< orphan*/  reada; } ;
struct btrfs_free_space_info {int dummy; } ;
struct btrfs_caching_control {struct btrfs_block_group_cache* block_group; } ;
struct btrfs_block_group_cache {int dummy; } ;

/* Variables and functions */
 int BTRFS_FREE_SPACE_USING_BITMAPS ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_free_space_info*) ; 
 int FUNC1 (struct btrfs_free_space_info*) ; 
 int /*<<< orphan*/  READA_FORWARD ; 
 struct btrfs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct btrfs_free_space_info*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct btrfs_free_space_info*) ; 
 int FUNC6 (struct btrfs_caching_control*,struct btrfs_path*,int) ; 
 int FUNC7 (struct btrfs_caching_control*,struct btrfs_path*,int) ; 
 struct btrfs_free_space_info* FUNC8 (int /*<<< orphan*/ *,struct btrfs_block_group_cache*,struct btrfs_path*,int /*<<< orphan*/ ) ; 

int FUNC9(struct btrfs_caching_control *caching_ctl)
{
	struct btrfs_block_group_cache *block_group;
	struct btrfs_free_space_info *info;
	struct btrfs_path *path;
	u32 extent_count, flags;
	int ret;

	block_group = caching_ctl->block_group;

	path = FUNC2();
	if (!path)
		return -ENOMEM;

	/*
	 * Just like caching_thread() doesn't want to deadlock on the extent
	 * tree, we don't want to deadlock on the free space tree.
	 */
	path->skip_locking = 1;
	path->search_commit_root = 1;
	path->reada = READA_FORWARD;

	info = FUNC8(NULL, block_group, path, 0);
	if (FUNC0(info)) {
		ret = FUNC1(info);
		goto out;
	}
	extent_count = FUNC4(path->nodes[0], info);
	flags = FUNC5(path->nodes[0], info);

	/*
	 * We left path pointing to the free space info item, so now
	 * load_free_space_foo can just iterate through the free space tree from
	 * there.
	 */
	if (flags & BTRFS_FREE_SPACE_USING_BITMAPS)
		ret = FUNC6(caching_ctl, path, extent_count);
	else
		ret = FUNC7(caching_ctl, path, extent_count);

out:
	FUNC3(path);
	return ret;
}