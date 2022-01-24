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
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_blocks; scalar_t__ i_size; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_nlink; } ;
struct ext2_block_alloc_info {int dummy; } ;
struct TYPE_2__ {struct ext2_block_alloc_info* i_block_alloc_info; int /*<<< orphan*/  i_dtime; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct ext2_block_alloc_info*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct ext2_block_alloc_info*) ; 

void FUNC19(struct inode * inode)
{
	struct ext2_block_alloc_info *rsv;
	int want_delete = 0;

	if (!inode->i_nlink && !FUNC11(inode)) {
		want_delete = 1;
		FUNC4(inode);
	} else {
		FUNC3(inode);
	}

	FUNC17(&inode->i_data);

	if (want_delete) {
		FUNC16(inode->i_sb);
		/* set dtime */
		FUNC0(inode)->i_dtime	= FUNC13();
		FUNC14(inode);
		FUNC1(inode, FUNC9(inode));
		/* truncate to 0 */
		inode->i_size = 0;
		if (inode->i_blocks)
			FUNC7(inode, 0);
		FUNC8(inode);
	}

	FUNC10(inode);
	FUNC2(inode);

	FUNC5(inode);
	rsv = FUNC0(inode)->i_block_alloc_info;
	FUNC0(inode)->i_block_alloc_info = NULL;
	if (FUNC18(rsv))
		FUNC12(rsv);

	if (want_delete) {
		FUNC6(inode);
		FUNC15(inode->i_sb);
	}
}