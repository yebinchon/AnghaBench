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
struct super_block {unsigned long s_blocksize_bits; } ;
struct inode {unsigned long i_blkbits; struct super_block* i_sb; } ;
struct buffer_head {unsigned long b_size; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {unsigned long mmu_private; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int FUNC3 (struct inode*,scalar_t__,scalar_t__*,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,struct super_block*,scalar_t__) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, sector_t iblock,
			   struct buffer_head *bh_result, int create)
{
	struct super_block *sb = inode->i_sb;
	unsigned long max_blocks = bh_result->b_size >> inode->i_blkbits;
	int err;
	unsigned long mapped_blocks;
	sector_t phys;

	FUNC1(sb);

	err = FUNC3(inode, iblock, &phys, &mapped_blocks, &create);
	if (err) {
		FUNC2(sb);
		return err;
	}

	if (phys) {
		max_blocks = FUNC5(mapped_blocks, max_blocks);
		if (create) {
			FUNC0(inode)->mmu_private += max_blocks <<
							sb->s_blocksize_bits;
			FUNC6(bh_result);
		}
		FUNC4(bh_result, sb, phys);
	}

	bh_result->b_size = max_blocks << sb->s_blocksize_bits;
	FUNC2(sb);

	return 0;
}