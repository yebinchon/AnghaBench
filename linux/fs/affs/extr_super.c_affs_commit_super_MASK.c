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
struct buffer_head {int dummy; } ;
struct affs_sb_info {struct buffer_head* s_root_bh; } ;
struct affs_root_tail {int /*<<< orphan*/  disk_change; } ;

/* Variables and functions */
 struct affs_root_tail* FUNC0 (struct super_block*,struct buffer_head*) ; 
 struct affs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

__attribute__((used)) static void
FUNC9(struct super_block *sb, int wait)
{
	struct affs_sb_info *sbi = FUNC1(sb);
	struct buffer_head *bh = sbi->s_root_bh;
	struct affs_root_tail *tail = FUNC0(sb, bh);

	FUNC5(bh);
	FUNC3(FUNC4(), &tail->disk_change);
	FUNC2(sb, bh);
	FUNC8(bh);

	FUNC6(bh);
	if (wait)
		FUNC7(bh);
}