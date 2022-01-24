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
typedef  unsigned int u32 ;
struct free_space_extent {scalar_t__ start; scalar_t__ length; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_path {scalar_t__* slots; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_fs_info {scalar_t__ sectorsize; } ;
struct btrfs_free_space_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {TYPE_1__ key; } ;

/* Variables and functions */
 scalar_t__ BTRFS_FREE_SPACE_BITMAP_KEY ; 
 scalar_t__ BTRFS_FREE_SPACE_EXTENT_KEY ; 
 unsigned int BTRFS_FREE_SPACE_USING_BITMAPS ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct btrfs_free_space_info*) ; 
 int FUNC1 (struct btrfs_free_space_info*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,struct btrfs_free_space_info*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,struct btrfs_free_space_info*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct btrfs_key*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int FUNC7 (struct btrfs_block_group_cache*,struct btrfs_path*,scalar_t__) ; 
 struct btrfs_free_space_info* FUNC8 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct btrfs_trans_handle *trans,
				      struct btrfs_fs_info *fs_info,
				      struct btrfs_block_group_cache *cache,
				      struct btrfs_path *path,
				      const struct free_space_extent * const extents,
				      unsigned int num_extents)
{
	struct btrfs_free_space_info *info;
	struct btrfs_key key;
	int prev_bit = 0, bit;
	u64 extent_start = 0, offset, end;
	u32 flags, extent_count;
	unsigned int i;
	int ret;

	info = FUNC8(trans, cache, path, 0);
	if (FUNC0(info)) {
		FUNC9("could not find free space info");
		ret = FUNC1(info);
		goto out;
	}
	flags = FUNC3(path->nodes[0], info);
	extent_count = FUNC2(path->nodes[0], info);

	if (extent_count != num_extents) {
		FUNC9("extent count is wrong");
		ret = -EINVAL;
		goto out;
	}
	if (flags & BTRFS_FREE_SPACE_USING_BITMAPS) {
		if (path->slots[0] != 0)
			goto invalid;
		end = cache->key.objectid + cache->key.offset;
		i = 0;
		while (++path->slots[0] < FUNC4(path->nodes[0])) {
			FUNC5(path->nodes[0], &key, path->slots[0]);
			if (key.type != BTRFS_FREE_SPACE_BITMAP_KEY)
				goto invalid;
			offset = key.objectid;
			while (offset < key.objectid + key.offset) {
				bit = FUNC7(cache, path, offset);
				if (prev_bit == 0 && bit == 1) {
					extent_start = offset;
				} else if (prev_bit == 1 && bit == 0) {
					if (i >= num_extents)
						goto invalid;
					if (i >= num_extents ||
					    extent_start != extents[i].start ||
					    offset - extent_start != extents[i].length)
						goto invalid;
					i++;
				}
				prev_bit = bit;
				offset += fs_info->sectorsize;
			}
		}
		if (prev_bit == 1) {
			if (i >= num_extents ||
			    extent_start != extents[i].start ||
			    end - extent_start != extents[i].length)
				goto invalid;
			i++;
		}
		if (i != num_extents)
			goto invalid;
	} else {
		if (FUNC4(path->nodes[0]) != num_extents + 1 ||
		    path->slots[0] != 0)
			goto invalid;
		for (i = 0; i < num_extents; i++) {
			path->slots[0]++;
			FUNC5(path->nodes[0], &key, path->slots[0]);
			if (key.type != BTRFS_FREE_SPACE_EXTENT_KEY ||
			    key.objectid != extents[i].start ||
			    key.offset != extents[i].length)
				goto invalid;
		}
	}

	ret = 0;
out:
	FUNC6(path);
	return ret;
invalid:
	FUNC9("free space tree is invalid");
	ret = -EINVAL;
	goto out;
}