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
struct btrfs_path {int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sectorsize; } ;
struct btrfs_block_group_cache {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BTRFS_FREE_SPACE_BITMAP_KEY ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 unsigned long FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct btrfs_block_group_cache *block_group,
				struct btrfs_path *path, u64 *start, u64 *size,
				int bit)
{
	struct btrfs_fs_info *fs_info = block_group->fs_info;
	struct extent_buffer *leaf;
	struct btrfs_key key;
	u64 end = *start + *size;
	u64 found_start, found_end;
	unsigned long ptr, first, last;

	leaf = path->nodes[0];
	FUNC1(leaf, &key, path->slots[0]);
	FUNC0(key.type == BTRFS_FREE_SPACE_BITMAP_KEY);

	found_start = key.objectid;
	found_end = key.objectid + key.offset;
	FUNC0(*start >= found_start && *start < found_end);
	FUNC0(end > found_start);

	if (end > found_end)
		end = found_end;

	ptr = FUNC2(leaf, path->slots[0]);
	first = FUNC4(*start - found_start, fs_info->sectorsize);
	last = FUNC4(end - found_start, fs_info->sectorsize);
	if (bit)
		FUNC6(leaf, ptr, first, last - first);
	else
		FUNC5(leaf, ptr, first, last - first);
	FUNC3(leaf);

	*size -= end - *start;
	*start = end;
}