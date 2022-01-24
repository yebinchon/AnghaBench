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
struct btrfs_free_space_ctl {scalar_t__ total_bitmaps; } ;
struct btrfs_free_space {int /*<<< orphan*/  offset_index; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int) ; 
 int FUNC3 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_free_space_ctl*,struct btrfs_free_space*,int) ; 

__attribute__((used)) static void FUNC5(struct btrfs_free_space_ctl *ctl,
			      struct btrfs_free_space *info,
			      bool update_stat)
{
	/*
	 * Only work with disconnected entries, as we can change their offset,
	 * and must be extent entries.
	 */
	FUNC0(!info->bitmap);
	FUNC0(FUNC1(&info->offset_index));

	if (ctl->total_bitmaps > 0) {
		bool stole_end;
		bool stole_front = false;

		stole_end = FUNC2(ctl, info, update_stat);
		if (ctl->total_bitmaps > 0)
			stole_front = FUNC3(ctl, info,
								 update_stat);

		if (stole_end || stole_front)
			FUNC4(ctl, info, update_stat);
	}
}