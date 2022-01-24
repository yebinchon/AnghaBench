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
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; scalar_t__* locks; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  nodesize; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 int BTRFS_MAX_LEVEL ; 
 scalar_t__ BTRFS_READ_LOCK_BLOCKING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int FUNC2 (struct extent_buffer*) ; 
 int FUNC3 (struct btrfs_path*,int) ; 
 struct btrfs_path* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,int) ; 
 int FUNC9 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct btrfs_trans_handle*,struct extent_buffer*) ; 
 int FUNC11 (struct extent_buffer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC17 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC19(struct btrfs_trans_handle *trans,
			       struct extent_buffer *root_eb,
			       u64 root_gen, int root_level)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	int ret = 0;
	int level;
	struct extent_buffer *eb = root_eb;
	struct btrfs_path *path = NULL;

	FUNC0(root_level < 0 || root_level >= BTRFS_MAX_LEVEL);
	FUNC0(root_eb == NULL);

	if (!FUNC18(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags))
		return 0;

	if (!FUNC15(root_eb)) {
		ret = FUNC11(root_eb, root_gen, root_level, NULL);
		if (ret)
			goto out;
	}

	if (root_level == 0) {
		ret = FUNC10(trans, root_eb);
		goto out;
	}

	path = FUNC4();
	if (!path)
		return -ENOMEM;

	/*
	 * Walk down the tree.  Missing extent blocks are filled in as
	 * we go. Metadata is accounted every time we read a new
	 * extent block.
	 *
	 * When we reach a leaf, we account for file extent items in it,
	 * walk back up the tree (adjusting slot pointers as we go)
	 * and restart the search process.
	 */
	FUNC14(root_eb); /* For path */
	path->nodes[root_level] = root_eb;
	path->slots[root_level] = 0;
	path->locks[root_level] = 0; /* so release_path doesn't try to unlock */
walk_down:
	level = root_level;
	while (level >= 0) {
		if (path->nodes[level] == NULL) {
			struct btrfs_key first_key;
			int parent_slot;
			u64 child_gen;
			u64 child_bytenr;

			/*
			 * We need to get child blockptr/gen from parent before
			 * we can read it.
			  */
			eb = path->nodes[level + 1];
			parent_slot = path->slots[level + 1];
			child_bytenr = FUNC6(eb, parent_slot);
			child_gen = FUNC8(eb, parent_slot);
			FUNC7(eb, &first_key, parent_slot);

			eb = FUNC17(fs_info, child_bytenr, child_gen,
					     level, &first_key);
			if (FUNC1(eb)) {
				ret = FUNC2(eb);
				goto out;
			} else if (!FUNC15(eb)) {
				FUNC16(eb);
				ret = -EIO;
				goto out;
			}

			path->nodes[level] = eb;
			path->slots[level] = 0;

			FUNC13(eb);
			FUNC12(eb);
			path->locks[level] = BTRFS_READ_LOCK_BLOCKING;

			ret = FUNC9(trans, child_bytenr,
							fs_info->nodesize,
							GFP_NOFS);
			if (ret)
				goto out;
		}

		if (level == 0) {
			ret = FUNC10(trans,
							    path->nodes[level]);
			if (ret)
				goto out;

			/* Nonzero return here means we completed our search */
			ret = FUNC3(path, root_level);
			if (ret)
				break;

			/* Restart search with new slots */
			goto walk_down;
		}

		level--;
	}

	ret = 0;
out:
	FUNC5(path);

	return ret;
}