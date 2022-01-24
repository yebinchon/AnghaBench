#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ext2_group_desc {int /*<<< orphan*/  bg_used_dirs_count; int /*<<< orphan*/  bg_free_inodes_count; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_dirs_counter; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,char*,int) ; 
 struct ext2_group_desc* FUNC2 (struct super_block*,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct super_block *sb, int group, int dir)
{
	struct ext2_group_desc * desc;
	struct buffer_head *bh;

	desc = FUNC2(sb, group, &bh);
	if (!desc) {
		FUNC1(sb, "ext2_release_inode",
			"can't get descriptor for group %d", group);
		return;
	}

	FUNC7(FUNC6(FUNC0(sb), group));
	FUNC3(&desc->bg_free_inodes_count, 1);
	if (dir)
		FUNC3(&desc->bg_used_dirs_count, -1);
	FUNC8(FUNC6(FUNC0(sb), group));
	if (dir)
		FUNC5(&FUNC0(sb)->s_dirs_counter);
	FUNC4(bh);
}