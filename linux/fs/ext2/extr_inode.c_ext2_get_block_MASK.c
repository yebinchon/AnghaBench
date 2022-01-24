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
typedef  int /*<<< orphan*/  u32 ;
struct inode {unsigned int i_blkbits; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {unsigned int b_size; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 

int FUNC4(struct inode *inode, sector_t iblock,
		struct buffer_head *bh_result, int create)
{
	unsigned max_blocks = bh_result->b_size >> inode->i_blkbits;
	bool new = false, boundary = false;
	u32 bno;
	int ret;

	ret = FUNC0(inode, iblock, max_blocks, &bno, &new, &boundary,
			create);
	if (ret <= 0)
		return ret;

	FUNC1(bh_result, inode->i_sb, bno);
	bh_result->b_size = (ret << inode->i_blkbits);
	if (new)
		FUNC3(bh_result);
	if (boundary)
		FUNC2(bh_result);
	return 0;

}