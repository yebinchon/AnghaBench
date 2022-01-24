#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {scalar_t__ ino_cache_state; TYPE_1__ root_key; int /*<<< orphan*/  ino_cache_wait; int /*<<< orphan*/  ino_cache_lock; struct btrfs_free_space_ctl* free_ino_ctl; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_free_space_ctl {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CACHE_FINISHED ; 
 scalar_t__ BTRFS_CACHE_NO ; 
 scalar_t__ BTRFS_CACHE_STARTED ; 
 scalar_t__ BTRFS_LAST_FREE_OBJECTID ; 
 int /*<<< orphan*/  INODE_MAP_CACHE ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,struct btrfs_free_space_ctl*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct btrfs_root*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caching_kthread ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*) ; 
 struct task_struct* FUNC5 (int /*<<< orphan*/ ,struct btrfs_root*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_fs_info*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct btrfs_root *root)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_free_space_ctl *ctl = root->free_ino_ctl;
	struct task_struct *tsk;
	int ret;
	u64 objectid;

	if (!FUNC3(fs_info, INODE_MAP_CACHE))
		return;

	FUNC7(&root->ino_cache_lock);
	if (root->ino_cache_state != BTRFS_CACHE_NO) {
		FUNC8(&root->ino_cache_lock);
		return;
	}

	root->ino_cache_state = BTRFS_CACHE_STARTED;
	FUNC8(&root->ino_cache_lock);

	ret = FUNC6(fs_info, root);
	if (ret == 1) {
		FUNC7(&root->ino_cache_lock);
		root->ino_cache_state = BTRFS_CACHE_FINISHED;
		FUNC8(&root->ino_cache_lock);
		FUNC9(&root->ino_cache_wait);
		return;
	}

	/*
	 * It can be quite time-consuming to fill the cache by searching
	 * through the extent tree, and this can keep ino allocation path
	 * waiting. Therefore at start we quickly find out the highest
	 * inode number and we know we can use inode numbers which fall in
	 * [highest_ino + 1, BTRFS_LAST_FREE_OBJECTID].
	 */
	ret = FUNC2(root, &objectid);
	if (!ret && objectid <= BTRFS_LAST_FREE_OBJECTID) {
		FUNC1(fs_info, ctl, objectid,
				       BTRFS_LAST_FREE_OBJECTID - objectid + 1);
		FUNC9(&root->ino_cache_wait);
	}

	tsk = FUNC5(caching_kthread, root, "btrfs-ino-cache-%llu",
			  root->root_key.objectid);
	if (FUNC0(tsk))
		FUNC4(root);
}