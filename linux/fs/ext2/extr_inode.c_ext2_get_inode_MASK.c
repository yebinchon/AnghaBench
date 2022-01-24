#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ext2_inode {int dummy; } ;
struct ext2_group_desc {int /*<<< orphan*/  bg_inode_table; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int ino_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_inodes_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 struct ext2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (struct super_block*) ; 
 int FUNC3 (struct super_block*) ; 
 int FUNC4 (struct super_block*) ; 
 int FUNC5 (struct super_block*) ; 
 int EXT2_ROOT_INO ; 
 TYPE_2__* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,char*,unsigned long,...) ; 
 struct ext2_group_desc* FUNC8 (struct super_block*,unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC10 (struct super_block*,unsigned long) ; 

__attribute__((used)) static struct ext2_inode *FUNC11(struct super_block *sb, ino_t ino,
					struct buffer_head **p)
{
	struct buffer_head * bh;
	unsigned long block_group;
	unsigned long block;
	unsigned long offset;
	struct ext2_group_desc * gdp;

	*p = NULL;
	if ((ino != EXT2_ROOT_INO && ino < FUNC3(sb)) ||
	    ino > FUNC9(FUNC6(sb)->s_es->s_inodes_count))
		goto Einval;

	block_group = (ino - 1) / FUNC4(sb);
	gdp = FUNC8(sb, block_group, NULL);
	if (!gdp)
		goto Egdp;
	/*
	 * Figure out the offset within the block group inode table
	 */
	offset = ((ino - 1) % FUNC4(sb)) * FUNC5(sb);
	block = FUNC9(gdp->bg_inode_table) +
		(offset >> FUNC2(sb));
	if (!(bh = FUNC10(sb, block)))
		goto Eio;

	*p = bh;
	offset &= (FUNC1(sb) - 1);
	return (struct ext2_inode *) (bh->b_data + offset);

Einval:
	FUNC7(sb, "ext2_get_inode", "bad inode number: %lu",
		   (unsigned long) ino);
	return FUNC0(-EINVAL);
Eio:
	FUNC7(sb, "ext2_get_inode",
		   "unable to read inode block - inode=%lu, block=%lu",
		   (unsigned long) ino, block);
Egdp:
	return FUNC0(-EIO);
}