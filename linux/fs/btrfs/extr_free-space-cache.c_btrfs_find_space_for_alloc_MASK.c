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
struct btrfs_free_space_ctl {int /*<<< orphan*/  tree_lock; } ;
struct btrfs_free_space {scalar_t__ bytes; scalar_t__ offset; scalar_t__ bitmap; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  fs_info; int /*<<< orphan*/  full_stripe_len; struct btrfs_free_space_ctl* free_space_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct btrfs_free_space_ctl*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  btrfs_free_space_cachep ; 
 struct btrfs_free_space* FUNC3 (struct btrfs_free_space_ctl*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct btrfs_free_space*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 

u64 FUNC10(struct btrfs_block_group_cache *block_group,
			       u64 offset, u64 bytes, u64 empty_size,
			       u64 *max_extent_size)
{
	struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
	struct btrfs_free_space *entry = NULL;
	u64 bytes_search = bytes + empty_size;
	u64 ret = 0;
	u64 align_gap = 0;
	u64 align_gap_len = 0;

	FUNC7(&ctl->tree_lock);
	entry = FUNC3(ctl, &offset, &bytes_search,
				block_group->full_stripe_len, max_extent_size);
	if (!entry)
		goto out;

	ret = offset;
	if (entry->bitmap) {
		FUNC2(ctl, entry, offset, bytes);
		if (!entry->bytes)
			FUNC4(ctl, entry);
	} else {
		FUNC9(ctl, entry);
		align_gap_len = offset - entry->offset;
		align_gap = entry->offset;

		entry->offset = offset + bytes;
		FUNC0(entry->bytes < bytes + align_gap_len);

		entry->bytes -= bytes + align_gap_len;
		if (!entry->bytes)
			FUNC5(btrfs_free_space_cachep, entry);
		else
			FUNC6(ctl, entry);
	}
out:
	FUNC8(&ctl->tree_lock);

	if (align_gap_len)
		FUNC1(block_group->fs_info, ctl,
				       align_gap, align_gap_len);
	return ret;
}