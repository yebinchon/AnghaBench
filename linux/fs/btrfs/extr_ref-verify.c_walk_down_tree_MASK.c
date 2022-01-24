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
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int /*<<< orphan*/ * locks; int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_READ_LOCK_BLOCKING ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 int FUNC9 (struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct extent_buffer* FUNC10 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct btrfs_key*) ; 

__attribute__((used)) static int FUNC11(struct btrfs_root *root, struct btrfs_path *path,
			  int level, u64 *bytenr, u64 *num_bytes)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct extent_buffer *eb;
	u64 block_bytenr, gen;
	int ret = 0;

	while (level >= 0) {
		if (level) {
			struct btrfs_key first_key;

			block_bytenr = FUNC2(path->nodes[level],
							   path->slots[level]);
			gen = FUNC4(path->nodes[level],
							path->slots[level]);
			FUNC3(path->nodes[level], &first_key,
					      path->slots[level]);
			eb = FUNC10(fs_info, block_bytenr, gen,
					     level - 1, &first_key);
			if (FUNC0(eb))
				return FUNC1(eb);
			if (!FUNC7(eb)) {
				FUNC8(eb);
				return -EIO;
			}
			FUNC6(eb);
			FUNC5(eb);
			path->nodes[level-1] = eb;
			path->slots[level-1] = 0;
			path->locks[level-1] = BTRFS_READ_LOCK_BLOCKING;
		} else {
			ret = FUNC9(root, path, bytenr, num_bytes);
			if (ret)
				break;
		}
		level--;
	}
	return ret;
}