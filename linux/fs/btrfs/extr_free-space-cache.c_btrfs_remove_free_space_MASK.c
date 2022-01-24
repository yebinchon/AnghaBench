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
struct btrfs_free_space {scalar_t__ offset; scalar_t__ bytes; int /*<<< orphan*/  bitmap; } ;
struct btrfs_block_group_cache {struct btrfs_free_space_ctl* free_space_ctl; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  btrfs_free_space_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct btrfs_free_space*) ; 
 int FUNC3 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct btrfs_free_space_ctl*,scalar_t__) ; 
 int FUNC6 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct btrfs_free_space* FUNC9 (struct btrfs_free_space_ctl*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ; 

int FUNC11(struct btrfs_block_group_cache *block_group,
			    u64 offset, u64 bytes)
{
	struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
	struct btrfs_free_space *info;
	int ret;
	bool re_search = false;

	FUNC7(&ctl->tree_lock);

again:
	ret = 0;
	if (!bytes)
		goto out_lock;

	info = FUNC9(ctl, offset, 0, 0);
	if (!info) {
		/*
		 * oops didn't find an extent that matched the space we wanted
		 * to remove, look for a bitmap instead
		 */
		info = FUNC9(ctl, FUNC5(ctl, offset),
					  1, 0);
		if (!info) {
			/*
			 * If we found a partial bit of our free space in a
			 * bitmap but then couldn't find the other part this may
			 * be a problem, so WARN about it.
			 */
			FUNC0(re_search);
			goto out_lock;
		}
	}

	re_search = false;
	if (!info->bitmap) {
		FUNC10(ctl, info);
		if (offset == info->offset) {
			u64 to_free = FUNC4(bytes, info->bytes);

			info->bytes -= to_free;
			info->offset += to_free;
			if (info->bytes) {
				ret = FUNC3(ctl, info);
				FUNC0(ret);
			} else {
				FUNC2(btrfs_free_space_cachep, info);
			}

			offset += to_free;
			bytes -= to_free;
			goto again;
		} else {
			u64 old_end = info->bytes + info->offset;

			info->bytes = offset - info->offset;
			ret = FUNC3(ctl, info);
			FUNC0(ret);
			if (ret)
				goto out_lock;

			/* Not enough bytes in this entry to satisfy us */
			if (old_end < offset + bytes) {
				bytes -= old_end - offset;
				offset = old_end;
				goto again;
			} else if (old_end == offset + bytes) {
				/* all done */
				goto out_lock;
			}
			FUNC8(&ctl->tree_lock);

			ret = FUNC1(block_group, offset + bytes,
						   old_end - (offset + bytes));
			FUNC0(ret);
			goto out;
		}
	}

	ret = FUNC6(ctl, info, &offset, &bytes);
	if (ret == -EAGAIN) {
		re_search = true;
		goto again;
	}
out_lock:
	FUNC8(&ctl->tree_lock);
out:
	return ret;
}