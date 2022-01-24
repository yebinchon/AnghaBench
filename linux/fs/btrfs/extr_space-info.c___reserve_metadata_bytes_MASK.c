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
struct reserve_ticket {int /*<<< orphan*/  list; int /*<<< orphan*/  wait; scalar_t__ error; scalar_t__ bytes; } ;
struct btrfs_space_info {scalar_t__ total_bytes; int flush; int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  priority_tickets; int /*<<< orphan*/  tickets; } ;
struct btrfs_fs_info {int /*<<< orphan*/  async_reclaim_work; int /*<<< orphan*/  flags; } ;
typedef  enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;
struct TYPE_2__ {int /*<<< orphan*/  journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BTRFS_BLOCK_GROUP_METADATA ; 
 int /*<<< orphan*/  BTRFS_FS_LOG_RECOVERING ; 
 int BTRFS_RESERVE_FLUSH_ALL ; 
 int BTRFS_RESERVE_NO_FLUSH ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,struct btrfs_space_info*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct btrfs_space_info*,int) ; 
 scalar_t__ FUNC3 (struct btrfs_fs_info*,struct btrfs_space_info*,scalar_t__,int,int) ; 
 TYPE_1__* current ; 
 int FUNC4 (struct btrfs_fs_info*,struct btrfs_space_info*,struct reserve_ticket*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct btrfs_fs_info*,struct btrfs_space_info*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_fs_info*,int,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct btrfs_fs_info *fs_info,
				    struct btrfs_space_info *space_info,
				    u64 orig_bytes,
				    enum btrfs_reserve_flush_enum flush,
				    bool system_chunk)
{
	struct reserve_ticket ticket;
	u64 used;
	int ret = 0;
	bool pending_tickets;

	FUNC0(orig_bytes);
	FUNC0(!current->journal_info || flush != BTRFS_RESERVE_FLUSH_ALL);

	FUNC10(&space_info->lock);
	ret = -ENOSPC;
	used = FUNC2(space_info, true);
	pending_tickets = !FUNC7(&space_info->tickets) ||
		!FUNC7(&space_info->priority_tickets);

	/*
	 * Carry on if we have enough space (short-circuit) OR call
	 * can_overcommit() to ensure we can overcommit to continue.
	 */
	if (!pending_tickets &&
	    ((used + orig_bytes <= space_info->total_bytes) ||
	     FUNC3(fs_info, space_info, orig_bytes, flush,
			   system_chunk))) {
		FUNC1(fs_info, space_info,
						      orig_bytes);
		ret = 0;
	}

	/*
	 * If we couldn't make a reservation then setup our reservation ticket
	 * and kick the async worker if it's not already running.
	 *
	 * If we are a priority flusher then we just need to add our ticket to
	 * the list and we will do our own flushing further down.
	 */
	if (ret && flush != BTRFS_RESERVE_NO_FLUSH) {
		ticket.bytes = orig_bytes;
		ticket.error = 0;
		FUNC5(&ticket.wait);
		if (flush == BTRFS_RESERVE_FLUSH_ALL) {
			FUNC6(&ticket.list, &space_info->tickets);
			if (!space_info->flush) {
				space_info->flush = 1;
				FUNC13(fs_info,
							  space_info->flags,
							  orig_bytes, flush,
							  "enospc");
				FUNC9(system_unbound_wq,
					   &fs_info->async_reclaim_work);
			}
		} else {
			FUNC6(&ticket.list,
				      &space_info->priority_tickets);
		}
	} else if (!ret && space_info->flags & BTRFS_BLOCK_GROUP_METADATA) {
		used += orig_bytes;
		/*
		 * We will do the space reservation dance during log replay,
		 * which means we won't have fs_info->fs_root set, so don't do
		 * the async reclaim as we will panic.
		 */
		if (!FUNC12(BTRFS_FS_LOG_RECOVERING, &fs_info->flags) &&
		    FUNC8(fs_info, space_info,
					  used, system_chunk) &&
		    !FUNC14(&fs_info->async_reclaim_work)) {
			FUNC13(fs_info, space_info->flags,
						  orig_bytes, flush, "preempt");
			FUNC9(system_unbound_wq,
				   &fs_info->async_reclaim_work);
		}
	}
	FUNC11(&space_info->lock);
	if (!ret || flush == BTRFS_RESERVE_NO_FLUSH)
		return ret;

	return FUNC4(fs_info, space_info, &ticket, flush);
}