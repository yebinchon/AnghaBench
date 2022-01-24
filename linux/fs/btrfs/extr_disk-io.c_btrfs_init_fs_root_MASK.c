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
struct btrfs_subvolume_writers {int dummy; } ;
struct btrfs_root {scalar_t__ highest_objectid; int /*<<< orphan*/  objectid_mutex; int /*<<< orphan*/  anon_dev; int /*<<< orphan*/  ino_cache_wait; int /*<<< orphan*/  ino_cache_lock; struct btrfs_subvolume_writers* subv_writers; void* free_ino_ctl; void* free_ino_pinned; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BTRFS_LAST_FREE_OBJECTID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct btrfs_subvolume_writers*) ; 
 int FUNC2 (struct btrfs_subvolume_writers*) ; 
 struct btrfs_subvolume_writers* FUNC3 () ; 
 int FUNC4 (struct btrfs_root*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct btrfs_root *root)
{
	int ret;
	struct btrfs_subvolume_writers *writers;

	root->free_ino_ctl = FUNC8(sizeof(*root->free_ino_ctl), GFP_NOFS);
	root->free_ino_pinned = FUNC8(sizeof(*root->free_ino_pinned),
					GFP_NOFS);
	if (!root->free_ino_pinned || !root->free_ino_ctl) {
		ret = -ENOMEM;
		goto fail;
	}

	writers = FUNC3();
	if (FUNC1(writers)) {
		ret = FUNC2(writers);
		goto fail;
	}
	root->subv_writers = writers;

	FUNC5(root);
	FUNC11(&root->ino_cache_lock);
	FUNC7(&root->ino_cache_wait);

	ret = FUNC6(&root->anon_dev);
	if (ret)
		goto fail;

	FUNC9(&root->objectid_mutex);
	ret = FUNC4(root,
					&root->highest_objectid);
	if (ret) {
		FUNC10(&root->objectid_mutex);
		goto fail;
	}

	FUNC0(root->highest_objectid <= BTRFS_LAST_FREE_OBJECTID);

	FUNC10(&root->objectid_mutex);

	return 0;
fail:
	/* The caller is responsible to call btrfs_free_fs_root */
	return ret;
}