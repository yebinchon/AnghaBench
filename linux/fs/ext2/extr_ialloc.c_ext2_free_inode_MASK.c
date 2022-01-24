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
struct super_block {int s_flags; } ;
struct inode {unsigned long i_ino; int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct ext2_super_block {int /*<<< orphan*/  s_inodes_count; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_3__ {struct ext2_super_block* s_es; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct super_block*) ; 
 unsigned long FUNC1 (struct super_block*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int SB_SYNCHRONOUS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,unsigned long,int) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 struct buffer_head* FUNC13 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 

void FUNC16 (struct inode * inode)
{
	struct super_block * sb = inode->i_sb;
	int is_directory;
	unsigned long ino;
	struct buffer_head *bitmap_bh;
	unsigned long block_group;
	unsigned long bit;
	struct ext2_super_block * es;

	ino = inode->i_ino;
	FUNC8 ("freeing inode %lu\n", ino);

	/*
	 * Note: we must free any quota before locking the superblock,
	 * as writing the quota to disk may need the lock as well.
	 */
	/* Quota is already initialized in iput() */
	FUNC6(inode);
	FUNC5(inode);

	es = FUNC2(sb)->s_es;
	is_directory = FUNC3(inode->i_mode);

	if (ino < FUNC0(sb) ||
	    ino > FUNC11(es->s_inodes_count)) {
		FUNC9 (sb, "ext2_free_inode",
			    "reserved or nonexistent inode %lu", ino);
		return;
	}
	block_group = (ino - 1) / FUNC1(sb);
	bit = (ino - 1) % FUNC1(sb);
	bitmap_bh = FUNC13(sb, block_group);
	if (!bitmap_bh)
		return;

	/* Ok, now we can actually update the inode bitmaps.. */
	if (!FUNC7(FUNC14(FUNC2(sb), block_group),
				bit, (void *) bitmap_bh->b_data))
		FUNC9 (sb, "ext2_free_inode",
			      "bit already cleared for inode %lu", ino);
	else
		FUNC10(sb, block_group, is_directory);
	FUNC12(bitmap_bh);
	if (sb->s_flags & SB_SYNCHRONOUS)
		FUNC15(bitmap_bh);

	FUNC4(bitmap_bh);
}