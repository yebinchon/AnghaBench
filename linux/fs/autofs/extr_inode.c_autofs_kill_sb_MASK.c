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
struct autofs_sb_info {int /*<<< orphan*/  oz_pgrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 

void FUNC6(struct super_block *sb)
{
	struct autofs_sb_info *sbi = FUNC1(sb);

	/*
	 * In the event of a failure in get_sb_nodev the superblock
	 * info is not present so nothing else has been setup, so
	 * just call kill_anon_super when we are called from
	 * deactivate_super.
	 */
	if (sbi) {
		/* Free wait queues, close pipe */
		FUNC0(sbi);
		FUNC5(sbi->oz_pgrp);
	}

	FUNC4("shutting down\n");
	FUNC3(sb);
	if (sbi)
		FUNC2(sbi, rcu);
}