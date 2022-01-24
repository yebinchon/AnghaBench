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
typedef  int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int ino_cache_progress; int highest_objectid; int /*<<< orphan*/  ino_cache_wait; int /*<<< orphan*/  ino_cache_lock; int /*<<< orphan*/  ino_cache_state; struct btrfs_free_space_ctl* free_ino_ctl; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int skip_locking; int search_commit_root; int* slots; struct extent_buffer** nodes; int /*<<< orphan*/  reada; } ;
struct btrfs_key {int objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_fs_info {int /*<<< orphan*/  commit_root_sem; } ;
struct btrfs_free_space_ctl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_CACHE_FINISHED ; 
 int BTRFS_FIRST_FREE_OBJECTID ; 
 scalar_t__ BTRFS_INODE_ITEM_KEY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INODE_MAP_CACHE ; 
 int /*<<< orphan*/  READA_FORWARD ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,struct btrfs_free_space_ctl*,int,int) ; 
 struct btrfs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_path*) ; 
 scalar_t__ FUNC4 (struct btrfs_fs_info*) ; 
 int FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int FUNC7 (struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_path*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_root*) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(void *data)
{
	struct btrfs_root *root = data;
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_free_space_ctl *ctl = root->free_ino_ctl;
	struct btrfs_key key;
	struct btrfs_path *path;
	struct extent_buffer *leaf;
	u64 last = (u64)-1;
	int slot;
	int ret;

	if (!FUNC10(fs_info, INODE_MAP_CACHE))
		return 0;

	path = FUNC2();
	if (!path) {
		FUNC14(root);
		return -ENOMEM;
	}

	/* Since the commit root is read-only, we can safely skip locking. */
	path->skip_locking = 1;
	path->search_commit_root = 1;
	path->reada = READA_FORWARD;

	key.objectid = BTRFS_FIRST_FREE_OBJECTID;
	key.offset = 0;
	key.type = BTRFS_INODE_ITEM_KEY;
again:
	/* need to make sure the commit_root doesn't disappear */
	FUNC13(&fs_info->commit_root_sem);

	ret = FUNC9(NULL, root, &key, path, 0, 0);
	if (ret < 0)
		goto out;

	while (1) {
		if (FUNC4(fs_info))
			goto out;

		leaf = path->nodes[0];
		slot = path->slots[0];
		if (slot >= FUNC5(leaf)) {
			ret = FUNC7(root, path);
			if (ret < 0)
				goto out;
			else if (ret > 0)
				break;

			if (FUNC15() ||
			    FUNC11(fs_info)) {
				leaf = path->nodes[0];

				if (FUNC0(FUNC5(leaf) == 0))
					break;

				/*
				 * Save the key so we can advances forward
				 * in the next search.
				 */
				FUNC6(leaf, &key, 0);
				FUNC8(path);
				root->ino_cache_progress = last;
				FUNC19(&fs_info->commit_root_sem);
				FUNC16(1);
				goto again;
			} else
				continue;
		}

		FUNC6(leaf, &key, slot);

		if (key.type != BTRFS_INODE_ITEM_KEY)
			goto next;

		if (key.objectid >= root->highest_objectid)
			break;

		if (last != (u64)-1 && last + 1 != key.objectid) {
			FUNC1(fs_info, ctl, last + 1,
					       key.objectid - last - 1);
			FUNC20(&root->ino_cache_wait);
		}

		last = key.objectid;
next:
		path->slots[0]++;
	}

	if (last < root->highest_objectid - 1) {
		FUNC1(fs_info, ctl, last + 1,
				       root->highest_objectid - last - 1);
	}

	FUNC17(&root->ino_cache_lock);
	root->ino_cache_state = BTRFS_CACHE_FINISHED;
	FUNC18(&root->ino_cache_lock);

	root->ino_cache_progress = (u64)-1;
	FUNC12(root);
out:
	FUNC20(&root->ino_cache_wait);
	FUNC19(&fs_info->commit_root_sem);

	FUNC3(path);

	return ret;
}