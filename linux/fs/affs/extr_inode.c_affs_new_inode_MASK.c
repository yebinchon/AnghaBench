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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int i_extcnt; int i_ext_last; scalar_t__ i_pa_cnt; scalar_t__ i_lastalloc; scalar_t__ i_protect; scalar_t__ mmu_private; int /*<<< orphan*/ * i_ext_bh; int /*<<< orphan*/ * i_ac; scalar_t__ i_lc_mask; scalar_t__ i_lc_shift; scalar_t__ i_lc_size; int /*<<< orphan*/ * i_lc; scalar_t__ i_blkcnt; int /*<<< orphan*/  i_opencnt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,struct inode*) ; 
 struct inode* FUNC12 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 

struct inode *
FUNC14(struct inode *dir)
{
	struct super_block	*sb = dir->i_sb;
	struct inode		*inode;
	u32			 block;
	struct buffer_head	*bh;

	if (!(inode = FUNC12(sb)))
		goto err_inode;

	if (!(block = FUNC1(dir, dir->i_ino)))
		goto err_block;

	bh = FUNC4(sb, block);
	if (!bh)
		goto err_bh;
	FUNC11(bh, inode);
	FUNC2(bh);

	inode->i_uid     = FUNC7();
	inode->i_gid     = FUNC6();
	inode->i_ino     = block;
	FUNC13(inode, 1);
	inode->i_mtime   = inode->i_atime = inode->i_ctime = FUNC8(inode);
	FUNC5(&FUNC0(inode)->i_opencnt, 0);
	FUNC0(inode)->i_blkcnt = 0;
	FUNC0(inode)->i_lc = NULL;
	FUNC0(inode)->i_lc_size = 0;
	FUNC0(inode)->i_lc_shift = 0;
	FUNC0(inode)->i_lc_mask = 0;
	FUNC0(inode)->i_ac = NULL;
	FUNC0(inode)->i_ext_bh = NULL;
	FUNC0(inode)->mmu_private = 0;
	FUNC0(inode)->i_protect = 0;
	FUNC0(inode)->i_lastalloc = 0;
	FUNC0(inode)->i_pa_cnt = 0;
	FUNC0(inode)->i_extcnt = 1;
	FUNC0(inode)->i_ext_last = ~1;

	FUNC9(inode);

	return inode;

err_bh:
	FUNC3(sb, block);
err_block:
	FUNC10(inode);
err_inode:
	return NULL;
}