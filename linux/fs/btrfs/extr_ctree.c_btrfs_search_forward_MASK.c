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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int keep_locks; int lowest_level; int* slots; struct extent_buffer** nodes; void** locks; } ;
struct btrfs_key {int dummy; } ;
typedef  int /*<<< orphan*/  found_key ;

/* Variables and functions */
 void* BTRFS_READ_LOCK ; 
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int FUNC3 (struct extent_buffer*,struct btrfs_key*,int,int*) ; 
 int FUNC4 (struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int,scalar_t__) ; 
 scalar_t__ FUNC5 (struct extent_buffer*) ; 
 int FUNC6 (struct extent_buffer*) ; 
 int FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_key*,int) ; 
 scalar_t__ FUNC10 (struct extent_buffer*,int) ; 
 struct extent_buffer* FUNC11 (struct btrfs_root*) ; 
 struct extent_buffer* FUNC12 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_path*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_key*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct btrfs_path*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC19(struct btrfs_root *root, struct btrfs_key *min_key,
			 struct btrfs_path *path,
			 u64 min_trans)
{
	struct extent_buffer *cur;
	struct btrfs_key found_key;
	int slot;
	int sret;
	u32 nritems;
	int level;
	int ret = 1;
	int keep_locks = path->keep_locks;

	path->keep_locks = 1;
again:
	cur = FUNC11(root);
	level = FUNC6(cur);
	FUNC2(path->nodes[level]);
	path->nodes[level] = cur;
	path->locks[level] = BTRFS_READ_LOCK;

	if (FUNC5(cur) < min_trans) {
		ret = 1;
		goto out;
	}
	while (1) {
		nritems = FUNC7(cur);
		level = FUNC6(cur);
		sret = FUNC3(cur, min_key, level, &slot);
		if (sret < 0) {
			ret = sret;
			goto out;
		}

		/* at the lowest level, we're done, setup the path and exit */
		if (level == path->lowest_level) {
			if (slot >= nritems)
				goto find_next_key;
			ret = 0;
			path->slots[level] = slot;
			FUNC8(cur, &found_key, slot);
			goto out;
		}
		if (sret && slot > 0)
			slot--;
		/*
		 * check this node pointer against the min_trans parameters.
		 * If it is too old, old, skip to the next one.
		 */
		while (slot < nritems) {
			u64 gen;

			gen = FUNC10(cur, slot);
			if (gen < min_trans) {
				slot++;
				continue;
			}
			break;
		}
find_next_key:
		/*
		 * we didn't find a candidate key in this node, walk forward
		 * and find another one
		 */
		if (slot >= nritems) {
			path->slots[level] = slot;
			FUNC14(path);
			sret = FUNC4(root, path, min_key, level,
						  min_trans);
			if (sret == 0) {
				FUNC13(path);
				goto again;
			} else {
				goto out;
			}
		}
		/* save our key for returning back */
		FUNC9(cur, &found_key, slot);
		path->slots[level] = slot;
		if (level == path->lowest_level) {
			ret = 0;
			goto out;
		}
		FUNC14(path);
		cur = FUNC12(cur, slot);
		if (FUNC0(cur)) {
			ret = FUNC1(cur);
			goto out;
		}

		FUNC15(cur);

		path->locks[level - 1] = BTRFS_READ_LOCK;
		path->nodes[level - 1] = cur;
		FUNC18(path, level, 1, 0, NULL);
	}
out:
	path->keep_locks = keep_locks;
	if (ret == 0) {
		FUNC16(path, path->lowest_level + 1);
		FUNC14(path);
		FUNC17(min_key, &found_key, sizeof(found_key));
	}
	return ret;
}