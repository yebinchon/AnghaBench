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
struct inode {int i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext2_group_desc {int /*<<< orphan*/  bg_inode_table; } ;
struct backing_dev_info {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct backing_dev_info*) ; 
 struct ext2_group_desc* FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *) ; 
 struct backing_dev_info* FUNC5 (struct inode*) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct inode *inode)
{
	unsigned long block_group;
	unsigned long offset;
	unsigned long block;
	struct ext2_group_desc * gdp;
	struct backing_dev_info *bdi;

	bdi = FUNC5(inode);
	if (FUNC3(bdi))
		return;

	block_group = (inode->i_ino - 1) / FUNC1(inode->i_sb);
	gdp = FUNC4(inode->i_sb, block_group, NULL);
	if (gdp == NULL)
		return;

	/*
	 * Figure out the offset within the block group inode table
	 */
	offset = ((inode->i_ino - 1) % FUNC1(inode->i_sb)) *
				FUNC2(inode->i_sb);
	block = FUNC6(gdp->bg_inode_table) +
				(offset >> FUNC0(inode->i_sb));
	FUNC7(inode->i_sb, block);
}