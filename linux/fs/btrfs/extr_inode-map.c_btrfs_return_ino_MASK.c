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
struct btrfs_root {scalar_t__ ino_cache_state; int /*<<< orphan*/  ino_cache_lock; struct btrfs_free_space_ctl* free_ino_pinned; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  commit_root_sem; } ;
struct btrfs_free_space_ctl {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CACHE_FINISHED ; 
 int /*<<< orphan*/  INODE_MAP_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,struct btrfs_free_space_ctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct btrfs_root *root, u64 objectid)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_free_space_ctl *pinned = root->free_ino_pinned;

	if (!FUNC1(fs_info, INODE_MAP_CACHE))
		return;
again:
	if (root->ino_cache_state == BTRFS_CACHE_FINISHED) {
		FUNC0(fs_info, pinned, objectid, 1);
	} else {
		FUNC2(&fs_info->commit_root_sem);
		FUNC3(&root->ino_cache_lock);
		if (root->ino_cache_state == BTRFS_CACHE_FINISHED) {
			FUNC4(&root->ino_cache_lock);
			FUNC6(&fs_info->commit_root_sem);
			goto again;
		}
		FUNC4(&root->ino_cache_lock);

		FUNC5(root);

		FUNC0(fs_info, pinned, objectid, 1);

		FUNC6(&fs_info->commit_root_sem);
	}
}