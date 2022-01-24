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
struct reserve_ticket {scalar_t__ bytes; } ;
struct btrfs_space_info {int /*<<< orphan*/  lock; } ;
struct btrfs_fs_info {int dummy; } ;
typedef  enum btrfs_flush_state { ____Placeholder_btrfs_flush_state } btrfs_flush_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,struct btrfs_space_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,struct btrfs_space_info*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct btrfs_fs_info *fs_info,
				struct btrfs_space_info *space_info,
				struct reserve_ticket *ticket,
				const enum btrfs_flush_state *states,
				int states_nr)
{
	u64 to_reclaim;
	int flush_state;

	FUNC2(&space_info->lock);
	to_reclaim = FUNC0(fs_info, space_info,
						      false);
	if (!to_reclaim) {
		FUNC3(&space_info->lock);
		return;
	}
	FUNC3(&space_info->lock);

	flush_state = 0;
	do {
		FUNC1(fs_info, space_info, to_reclaim, states[flush_state]);
		flush_state++;
		FUNC2(&space_info->lock);
		if (ticket->bytes == 0) {
			FUNC3(&space_info->lock);
			return;
		}
		FUNC3(&space_info->lock);
	} while (flush_state < states_nr);
}