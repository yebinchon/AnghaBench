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
typedef  int /*<<< orphan*/  u32 ;
struct extent_buffer {int /*<<< orphan*/  start; } ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; scalar_t__* locks; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  nodesize; } ;

/* Variables and functions */
 scalar_t__ BTRFS_READ_LOCK_BLOCKING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int FUNC2 (struct extent_buffer*) ; 
 struct btrfs_path* FUNC3 () ; 
 scalar_t__ FUNC4 (struct btrfs_key*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,int) ; 
 int FUNC11 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct btrfs_trans_handle*,struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC18 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct btrfs_key*) ; 

__attribute__((used)) static int FUNC19(struct btrfs_trans_handle* trans,
				    struct extent_buffer *src_eb,
				    struct btrfs_path *dst_path,
				    int dst_level, int root_level,
				    bool trace_leaf)
{
	struct btrfs_key key;
	struct btrfs_path *src_path;
	struct btrfs_fs_info *fs_info = trans->fs_info;
	u32 nodesize = fs_info->nodesize;
	int cur_level = root_level;
	int ret;

	FUNC0(dst_level > root_level);
	/* Level mismatch */
	if (FUNC6(src_eb) != root_level)
		return -EINVAL;

	src_path = FUNC3();
	if (!src_path) {
		ret = -ENOMEM;
		goto out;
	}

	if (dst_level)
		FUNC9(dst_path->nodes[dst_level], &key, 0);
	else
		FUNC7(dst_path->nodes[dst_level], &key, 0);

	/* For src_path */
	FUNC15(src_eb);
	src_path->nodes[root_level] = src_eb;
	src_path->slots[root_level] = dst_path->slots[root_level];
	src_path->locks[root_level] = 0;

	/* A simplified version of btrfs_search_slot() */
	while (cur_level >= dst_level) {
		struct btrfs_key src_key;
		struct btrfs_key dst_key;

		if (src_path->nodes[cur_level] == NULL) {
			struct btrfs_key first_key;
			struct extent_buffer *eb;
			int parent_slot;
			u64 child_gen;
			u64 child_bytenr;

			eb = src_path->nodes[cur_level + 1];
			parent_slot = src_path->slots[cur_level + 1];
			child_bytenr = FUNC8(eb, parent_slot);
			child_gen = FUNC10(eb, parent_slot);
			FUNC9(eb, &first_key, parent_slot);

			eb = FUNC18(fs_info, child_bytenr, child_gen,
					     cur_level, &first_key);
			if (FUNC1(eb)) {
				ret = FUNC2(eb);
				goto out;
			} else if (!FUNC16(eb)) {
				FUNC17(eb);
				ret = -EIO;
				goto out;
			}

			src_path->nodes[cur_level] = eb;

			FUNC14(eb);
			FUNC13(eb);
			src_path->locks[cur_level] = BTRFS_READ_LOCK_BLOCKING;
		}

		src_path->slots[cur_level] = dst_path->slots[cur_level];
		if (cur_level) {
			FUNC9(dst_path->nodes[cur_level],
					&dst_key, dst_path->slots[cur_level]);
			FUNC9(src_path->nodes[cur_level],
					&src_key, src_path->slots[cur_level]);
		} else {
			FUNC7(dst_path->nodes[cur_level],
					&dst_key, dst_path->slots[cur_level]);
			FUNC7(src_path->nodes[cur_level],
					&src_key, src_path->slots[cur_level]);
		}
		/* Content mismatch, something went wrong */
		if (FUNC4(&dst_key, &src_key)) {
			ret = -ENOENT;
			goto out;
		}
		cur_level--;
	}

	/*
	 * Now both @dst_path and @src_path have been populated, record the tree
	 * blocks for qgroup accounting.
	 */
	ret = FUNC11(trans, src_path->nodes[dst_level]->start,
			nodesize, GFP_NOFS);
	if (ret < 0)
		goto out;
	ret = FUNC11(trans,
			dst_path->nodes[dst_level]->start,
			nodesize, GFP_NOFS);
	if (ret < 0)
		goto out;

	/* Record leaf file extents */
	if (dst_level == 0 && trace_leaf) {
		ret = FUNC12(trans, src_path->nodes[0]);
		if (ret < 0)
			goto out;
		ret = FUNC12(trans, dst_path->nodes[0]);
	}
out:
	FUNC5(src_path);
	return ret;
}