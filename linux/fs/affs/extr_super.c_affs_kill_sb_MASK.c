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
struct affs_sb_info {int /*<<< orphan*/  s_bmlock; struct affs_sb_info* s_prefix; int /*<<< orphan*/  s_root_bh; } ;

/* Variables and functions */
 struct affs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct affs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct super_block *sb)
{
	struct affs_sb_info *sbi = FUNC0(sb);
	FUNC4(sb);
	if (sbi) {
		FUNC2(sb);
		FUNC1(sbi->s_root_bh);
		FUNC3(sbi->s_prefix);
		FUNC5(&sbi->s_bmlock);
		FUNC3(sbi);
	}
}