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
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; int lowest_level; struct extent_buffer** nodes; scalar_t__ skip_locking; scalar_t__* locks; int /*<<< orphan*/  keep_locks; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 int BTRFS_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_key*,int) ; 
 scalar_t__ FUNC4 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct btrfs_root *root, struct btrfs_path *path,
			struct btrfs_key *key, int level, u64 min_trans)
{
	int slot;
	struct extent_buffer *c;

	FUNC0(!path->keep_locks && !path->skip_locking);
	while (level < BTRFS_MAX_LEVEL) {
		if (!path->nodes[level])
			return 1;

		slot = path->slots[level] + 1;
		c = path->nodes[level];
next:
		if (slot >= FUNC1(c)) {
			int ret;
			int orig_lowest;
			struct btrfs_key cur_key;
			if (level + 1 >= BTRFS_MAX_LEVEL ||
			    !path->nodes[level + 1])
				return 1;

			if (path->locks[level + 1] || path->skip_locking) {
				level++;
				continue;
			}

			slot = FUNC1(c) - 1;
			if (level == 0)
				FUNC2(c, &cur_key, slot);
			else
				FUNC3(c, &cur_key, slot);

			orig_lowest = path->lowest_level;
			FUNC5(path);
			path->lowest_level = level;
			ret = FUNC6(NULL, root, &cur_key, path,
						0, 0);
			path->lowest_level = orig_lowest;
			if (ret < 0)
				return ret;

			c = path->nodes[level];
			slot = path->slots[level];
			if (ret == 0)
				slot++;
			goto next;
		}

		if (level == 0)
			FUNC2(c, key, slot);
		else {
			u64 gen = FUNC4(c, slot);

			if (gen < min_trans) {
				slot++;
				goto next;
			}
			FUNC3(c, key, slot);
		}
		return 0;
	}
	return 1;
}