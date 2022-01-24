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
struct ext2_sb_info {int /*<<< orphan*/  s_resgid; int /*<<< orphan*/  s_resuid; TYPE_1__* s_es; int /*<<< orphan*/  s_freeblocks_counter; } ;
typedef  scalar_t__ ext2_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_r_blocks_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ext2_sb_info *sbi)
{
	ext2_fsblk_t free_blocks, root_blocks;

	free_blocks = FUNC5(&sbi->s_freeblocks_counter);
	root_blocks = FUNC4(sbi->s_es->s_r_blocks_count);
	if (free_blocks < root_blocks + 1 && !FUNC0(CAP_SYS_RESOURCE) &&
		!FUNC6(sbi->s_resuid, FUNC1()) &&
		(FUNC2(sbi->s_resgid, GLOBAL_ROOT_GID) ||
		 !FUNC3 (sbi->s_resgid))) {
		return 0;
	}
	return 1;
}