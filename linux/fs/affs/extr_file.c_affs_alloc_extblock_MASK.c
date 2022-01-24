#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;
struct TYPE_6__ {void* key; void* ptype; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_extcnt; } ;
struct TYPE_4__ {void* extension; void* parent; void* stype; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct buffer_head*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOSPC ; 
 struct buffer_head* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ST_FILE ; 
 scalar_t__ T_LIST ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,scalar_t__) ; 
 struct buffer_head* FUNC8 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,char*,char*,scalar_t__) ; 
 scalar_t__ FUNC10 (void*) ; 
 void* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

__attribute__((used)) static struct buffer_head *
FUNC14(struct inode *inode, struct buffer_head *bh, u32 ext)
{
	struct super_block *sb = inode->i_sb;
	struct buffer_head *new_bh;
	u32 blocknr, tmp;

	blocknr = FUNC5(inode, bh->b_blocknr);
	if (!blocknr)
		return FUNC3(-ENOSPC);

	new_bh = FUNC8(sb, blocknr);
	if (!new_bh) {
		FUNC7(sb, blocknr);
		return FUNC3(-EIO);
	}

	FUNC0(new_bh)->ptype = FUNC11(T_LIST);
	FUNC0(new_bh)->key = FUNC11(blocknr);
	FUNC2(sb, new_bh)->stype = FUNC11(ST_FILE);
	FUNC2(sb, new_bh)->parent = FUNC11(inode->i_ino);
	FUNC6(sb, new_bh);

	FUNC12(new_bh, inode);

	tmp = FUNC10(FUNC2(sb, bh)->extension);
	if (tmp)
		FUNC9(sb, "alloc_ext", "previous extension set (%x)", tmp);
	FUNC2(sb, bh)->extension = FUNC11(blocknr);
	FUNC4(bh, blocknr - tmp);
	FUNC12(bh, inode);

	FUNC1(inode)->i_extcnt++;
	FUNC13(inode);

	return new_bh;
}