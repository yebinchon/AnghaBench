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
struct btrfs_fs_info {unsigned long mount_opt; int /*<<< orphan*/  sb; int /*<<< orphan*/  defrag_running; int /*<<< orphan*/  transaction_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_DEFRAG ; 
 int SB_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC4(struct btrfs_fs_info *fs_info,
				       unsigned long old_opts, int flags)
{
	if (FUNC1(old_opts, AUTO_DEFRAG) &&
	    (!FUNC1(fs_info->mount_opt, AUTO_DEFRAG) ||
	     (flags & SB_RDONLY))) {
		/* wait for any defraggers to finish */
		FUNC3(fs_info->transaction_wait,
			   (FUNC0(&fs_info->defrag_running) == 0));
		if (flags & SB_RDONLY)
			FUNC2(fs_info->sb);
	}
}