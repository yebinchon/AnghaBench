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
struct find_free_extent_ctl {scalar_t__ loop; int orig_have_caching_bg; scalar_t__ index; scalar_t__ empty_size; scalar_t__ empty_cluster; int /*<<< orphan*/  flags; scalar_t__ have_caching_bg; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_key {scalar_t__ objectid; } ;
struct btrfs_fs_info {struct btrfs_root* extent_root; } ;
struct btrfs_free_cluster {int /*<<< orphan*/  lock; scalar_t__ window_start; } ;
struct TYPE_2__ {struct btrfs_trans_handle* journal_info; } ;

/* Variables and functions */
 scalar_t__ BTRFS_NR_RAID_TYPES ; 
 int /*<<< orphan*/  CHUNK_ALLOC_FORCE ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 scalar_t__ LOOP_ALLOC_CHUNK ; 
 scalar_t__ LOOP_CACHING_NOWAIT ; 
 scalar_t__ LOOP_CACHING_WAIT ; 
 scalar_t__ LOOP_NO_EMPTY_SIZE ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*,int) ; 
 int FUNC3 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*) ; 
 struct btrfs_trans_handle* FUNC5 (struct btrfs_root*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct btrfs_fs_info *fs_info,
					struct btrfs_free_cluster *last_ptr,
					struct btrfs_key *ins,
					struct find_free_extent_ctl *ffe_ctl,
					int full_search, bool use_cluster)
{
	struct btrfs_root *root = fs_info->extent_root;
	int ret;

	if ((ffe_ctl->loop == LOOP_CACHING_NOWAIT) &&
	    ffe_ctl->have_caching_bg && !ffe_ctl->orig_have_caching_bg)
		ffe_ctl->orig_have_caching_bg = true;

	if (!ins->objectid && ffe_ctl->loop >= LOOP_CACHING_WAIT &&
	    ffe_ctl->have_caching_bg)
		return 1;

	if (!ins->objectid && ++(ffe_ctl->index) < BTRFS_NR_RAID_TYPES)
		return 1;

	if (ins->objectid) {
		if (!use_cluster && last_ptr) {
			FUNC6(&last_ptr->lock);
			last_ptr->window_start = ins->objectid;
			FUNC7(&last_ptr->lock);
		}
		return 0;
	}

	/*
	 * LOOP_CACHING_NOWAIT, search partially cached block groups, kicking
	 *			caching kthreads as we move along
	 * LOOP_CACHING_WAIT, search everything, and wait if our bg is caching
	 * LOOP_ALLOC_CHUNK, force a chunk allocation and try again
	 * LOOP_NO_EMPTY_SIZE, set empty_size and empty_cluster to 0 and try
	 *		       again
	 */
	if (ffe_ctl->loop < LOOP_NO_EMPTY_SIZE) {
		ffe_ctl->index = 0;
		if (ffe_ctl->loop == LOOP_CACHING_NOWAIT) {
			/*
			 * We want to skip the LOOP_CACHING_WAIT step if we
			 * don't have any uncached bgs and we've already done a
			 * full search through.
			 */
			if (ffe_ctl->orig_have_caching_bg || !full_search)
				ffe_ctl->loop = LOOP_CACHING_WAIT;
			else
				ffe_ctl->loop = LOOP_ALLOC_CHUNK;
		} else {
			ffe_ctl->loop++;
		}

		if (ffe_ctl->loop == LOOP_ALLOC_CHUNK) {
			struct btrfs_trans_handle *trans;
			int exist = 0;

			trans = current->journal_info;
			if (trans)
				exist = 1;
			else
				trans = FUNC5(root);

			if (FUNC0(trans)) {
				ret = FUNC1(trans);
				return ret;
			}

			ret = FUNC3(trans, ffe_ctl->flags,
						CHUNK_ALLOC_FORCE);

			/*
			 * If we can't allocate a new chunk we've already looped
			 * through at least once, move on to the NO_EMPTY_SIZE
			 * case.
			 */
			if (ret == -ENOSPC)
				ffe_ctl->loop = LOOP_NO_EMPTY_SIZE;

			/* Do not bail out on ENOSPC since we can do more. */
			if (ret < 0 && ret != -ENOSPC)
				FUNC2(trans, ret);
			else
				ret = 0;
			if (!exist)
				FUNC4(trans);
			if (ret)
				return ret;
		}

		if (ffe_ctl->loop == LOOP_NO_EMPTY_SIZE) {
			/*
			 * Don't loop again if we already have no empty_size and
			 * no empty_cluster.
			 */
			if (ffe_ctl->empty_size == 0 &&
			    ffe_ctl->empty_cluster == 0)
				return -ENOSPC;
			ffe_ctl->empty_size = 0;
			ffe_ctl->empty_cluster = 0;
		}
		return 1;
	}
	return -ENOSPC;
}