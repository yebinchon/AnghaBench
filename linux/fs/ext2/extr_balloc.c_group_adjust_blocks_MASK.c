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
struct ext2_sb_info {int dummy; } ;
struct ext2_group_desc {int /*<<< orphan*/  bg_free_blocks_count; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 struct ext2_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct ext2_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb, int group_no,
	struct ext2_group_desc *desc, struct buffer_head *bh, int count)
{
	if (count) {
		struct ext2_sb_info *sbi = FUNC0(sb);
		unsigned free_blocks;

		FUNC5(FUNC4(sbi, group_no));
		free_blocks = FUNC2(desc->bg_free_blocks_count);
		desc->bg_free_blocks_count = FUNC1(free_blocks + count);
		FUNC6(FUNC4(sbi, group_no));
		FUNC3(bh);
	}
}