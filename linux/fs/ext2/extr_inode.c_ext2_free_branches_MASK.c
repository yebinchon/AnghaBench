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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__*,scalar_t__*) ; 
 unsigned long FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct buffer_head* FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct inode *inode, __le32 *p, __le32 *q, int depth)
{
	struct buffer_head * bh;
	unsigned long nr;

	if (depth--) {
		int addr_per_block = FUNC0(inode->i_sb);
		for ( ; p < q ; p++) {
			nr = FUNC5(*p);
			if (!nr)
				continue;
			*p = 0;
			bh = FUNC7(inode->i_sb, nr);
			/*
			 * A read failure? Report error and clear slot
			 * (should be rare).
			 */ 
			if (!bh) {
				FUNC2(inode->i_sb, "ext2_free_branches",
					"Read failure, inode=%ld, block=%ld",
					inode->i_ino, nr);
				continue;
			}
			FUNC8(inode,
					   (__le32*)bh->b_data,
					   (__le32*)bh->b_data + addr_per_block,
					   depth);
			FUNC1(bh);
			FUNC3(inode, nr, 1);
			FUNC6(inode);
		}
	} else
		FUNC4(inode, p, q);
}