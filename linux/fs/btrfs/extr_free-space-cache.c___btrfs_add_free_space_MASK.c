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
typedef  void* u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_free_space_ctl {int /*<<< orphan*/  tree_lock; } ;
struct btrfs_free_space {int /*<<< orphan*/  offset_index; void* bytes; void* offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,int) ; 
 int /*<<< orphan*/  btrfs_free_space_cachep ; 
 int FUNC3 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct btrfs_free_space*) ; 
 struct btrfs_free_space* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int) ; 
 scalar_t__ FUNC10 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int) ; 

int FUNC11(struct btrfs_fs_info *fs_info,
			   struct btrfs_free_space_ctl *ctl,
			   u64 offset, u64 bytes)
{
	struct btrfs_free_space *info;
	int ret = 0;

	info = FUNC5(btrfs_free_space_cachep, GFP_NOFS);
	if (!info)
		return -ENOMEM;

	info->offset = offset;
	info->bytes = bytes;
	FUNC1(&info->offset_index);

	FUNC7(&ctl->tree_lock);

	if (FUNC10(ctl, info, true))
		goto link;

	/*
	 * There was no extent directly to the left or right of this new
	 * extent then we know we're going to have to allocate a new extent, so
	 * before we do that see if we need to drop this into a bitmap
	 */
	ret = FUNC3(ctl, info);
	if (ret < 0) {
		goto out;
	} else if (ret) {
		ret = 0;
		goto out;
	}
link:
	/*
	 * Only steal free space from adjacent bitmaps if we're sure we're not
	 * going to add the new free space to existing bitmap entries - because
	 * that would mean unnecessary work that would be reverted. Therefore
	 * attempt to steal space from bitmaps if we're adding an extent entry.
	 */
	FUNC9(ctl, info, true);

	ret = FUNC6(ctl, info);
	if (ret)
		FUNC4(btrfs_free_space_cachep, info);
out:
	FUNC8(&ctl->tree_lock);

	if (ret) {
		FUNC2(fs_info, "unable to add free space :%d", ret);
		FUNC0(ret != -EEXIST);
	}

	return ret;
}