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
struct super_block {int dummy; } ;
struct affs_sb_info {int work_queued; int /*<<< orphan*/  work_lock; int /*<<< orphan*/  sb_work; } ;

/* Variables and functions */
 struct affs_sb_info* FUNC0 (struct super_block*) ; 
 int dirty_writeback_interval ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_long_wq ; 

void FUNC6(struct super_block *sb)
{
	struct affs_sb_info *sbi = FUNC0(sb);
	unsigned long delay;

	if (FUNC3(sb))
	       return;

	FUNC4(&sbi->work_lock);
	if (!sbi->work_queued) {
	       delay = FUNC1(dirty_writeback_interval * 10);
	       FUNC2(system_long_wq, &sbi->sb_work, delay);
	       sbi->work_queued = 1;
	}
	FUNC5(&sbi->work_lock);
}