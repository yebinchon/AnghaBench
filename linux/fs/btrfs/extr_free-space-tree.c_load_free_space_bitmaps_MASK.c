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
typedef  scalar_t__ u32 ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_fs_info {scalar_t__ sectorsize; struct btrfs_root* free_space_root; } ;
struct btrfs_caching_control {scalar_t__ progress; int /*<<< orphan*/  wait; struct btrfs_block_group_cache* block_group; } ;
struct TYPE_2__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {TYPE_1__ key; struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BTRFS_FREE_SPACE_BITMAP_KEY ; 
 scalar_t__ BTRFS_FREE_SPACE_INFO_KEY ; 
 scalar_t__ CACHING_CTL_WAKE_UP ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct btrfs_root*,struct btrfs_path*) ; 
 int FUNC5 (struct btrfs_block_group_cache*,struct btrfs_path*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct btrfs_caching_control *caching_ctl,
				   struct btrfs_path *path,
				   u32 expected_extent_count)
{
	struct btrfs_block_group_cache *block_group;
	struct btrfs_fs_info *fs_info;
	struct btrfs_root *root;
	struct btrfs_key key;
	int prev_bit = 0, bit;
	/* Initialize to silence GCC. */
	u64 extent_start = 0;
	u64 end, offset;
	u64 total_found = 0;
	u32 extent_count = 0;
	int ret;

	block_group = caching_ctl->block_group;
	fs_info = block_group->fs_info;
	root = fs_info->free_space_root;

	end = block_group->key.objectid + block_group->key.offset;

	while (1) {
		ret = FUNC4(root, path);
		if (ret < 0)
			goto out;
		if (ret)
			break;

		FUNC3(path->nodes[0], &key, path->slots[0]);

		if (key.type == BTRFS_FREE_SPACE_INFO_KEY)
			break;

		FUNC0(key.type == BTRFS_FREE_SPACE_BITMAP_KEY);
		FUNC0(key.objectid < end && key.objectid + key.offset <= end);

		caching_ctl->progress = key.objectid;

		offset = key.objectid;
		while (offset < key.objectid + key.offset) {
			bit = FUNC5(block_group, path, offset);
			if (prev_bit == 0 && bit == 1) {
				extent_start = offset;
			} else if (prev_bit == 1 && bit == 0) {
				total_found += FUNC1(block_group,
								  extent_start,
								  offset);
				if (total_found > CACHING_CTL_WAKE_UP) {
					total_found = 0;
					FUNC6(&caching_ctl->wait);
				}
				extent_count++;
			}
			prev_bit = bit;
			offset += fs_info->sectorsize;
		}
	}
	if (prev_bit == 1) {
		total_found += FUNC1(block_group, extent_start,
						  end);
		extent_count++;
	}

	if (extent_count != expected_extent_count) {
		FUNC2(fs_info,
			  "incorrect extent count for %llu; counted %u, expected %u",
			  block_group->key.objectid, extent_count,
			  expected_extent_count);
		FUNC0(0);
		ret = -EIO;
		goto out;
	}

	caching_ctl->progress = (u64)-1;

	ret = 0;
out:
	return ret;
}