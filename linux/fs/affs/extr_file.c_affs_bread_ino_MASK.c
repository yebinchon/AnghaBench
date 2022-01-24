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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_state; int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 int EIO ; 
 struct buffer_head* FUNC0 (int) ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int,struct buffer_head*,int) ; 

__attribute__((used)) static inline struct buffer_head *
FUNC3(struct inode *inode, int block, int create)
{
	struct buffer_head *bh, tmp_bh;
	int err;

	tmp_bh.b_state = 0;
	err = FUNC2(inode, block, &tmp_bh, create);
	if (!err) {
		bh = FUNC1(inode->i_sb, tmp_bh.b_blocknr);
		if (bh) {
			bh->b_state |= tmp_bh.b_state;
			return bh;
		}
		err = -EIO;
	}
	return FUNC0(err);
}