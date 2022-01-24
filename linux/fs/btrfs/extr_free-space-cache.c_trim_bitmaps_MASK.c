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
struct btrfs_trim_range {int /*<<< orphan*/  list; scalar_t__ bytes; scalar_t__ start; } ;
struct btrfs_free_space_ctl {scalar_t__ free_space; int unit; int /*<<< orphan*/  cache_writeout_mutex; int /*<<< orphan*/  trimming_ranges; int /*<<< orphan*/  tree_lock; } ;
struct btrfs_free_space {scalar_t__ bytes; } ;
struct btrfs_block_group_cache {struct btrfs_free_space_ctl* free_space_ctl; } ;

/* Variables and functions */
 int BITS_PER_BITMAP ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  current ; 
 int FUNC2 (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct btrfs_trim_range*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct btrfs_free_space_ctl*,scalar_t__) ; 
 int FUNC10 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct btrfs_free_space* FUNC13 (struct btrfs_free_space_ctl*,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct btrfs_block_group_cache *block_group,
			u64 *total_trimmed, u64 start, u64 end, u64 minlen)
{
	struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
	struct btrfs_free_space *entry;
	int ret = 0;
	int ret2;
	u64 bytes;
	u64 offset = FUNC9(ctl, start);

	while (offset < end) {
		bool next_bitmap = false;
		struct btrfs_trim_range trim_entry;

		FUNC7(&ctl->cache_writeout_mutex);
		FUNC11(&ctl->tree_lock);

		if (ctl->free_space < minlen) {
			FUNC12(&ctl->tree_lock);
			FUNC8(&ctl->cache_writeout_mutex);
			break;
		}

		entry = FUNC13(ctl, offset, 1, 0);
		if (!entry) {
			FUNC12(&ctl->tree_lock);
			FUNC8(&ctl->cache_writeout_mutex);
			next_bitmap = true;
			goto next;
		}

		bytes = minlen;
		ret2 = FUNC10(ctl, entry, &start, &bytes, false);
		if (ret2 || start >= end) {
			FUNC12(&ctl->tree_lock);
			FUNC8(&ctl->cache_writeout_mutex);
			next_bitmap = true;
			goto next;
		}

		bytes = FUNC6(bytes, end - start);
		if (bytes < minlen) {
			FUNC12(&ctl->tree_lock);
			FUNC8(&ctl->cache_writeout_mutex);
			goto next;
		}

		FUNC0(ctl, entry, start, bytes);
		if (entry->bytes == 0)
			FUNC4(ctl, entry);

		FUNC12(&ctl->tree_lock);
		trim_entry.start = start;
		trim_entry.bytes = bytes;
		FUNC5(&trim_entry.list, &ctl->trimming_ranges);
		FUNC8(&ctl->cache_writeout_mutex);

		ret = FUNC2(block_group, total_trimmed, start, bytes,
				  start, bytes, &trim_entry);
		if (ret)
			break;
next:
		if (next_bitmap) {
			offset += BITS_PER_BITMAP * ctl->unit;
		} else {
			start += bytes;
			if (start >= offset + BITS_PER_BITMAP * ctl->unit)
				offset += BITS_PER_BITMAP * ctl->unit;
		}

		if (FUNC3(current)) {
			ret = -ERESTARTSYS;
			break;
		}

		FUNC1();
	}

	return ret;
}