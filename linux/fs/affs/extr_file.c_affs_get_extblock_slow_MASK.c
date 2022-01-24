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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_6__ {int i_ext_last; int i_extcnt; int i_lc_shift; int i_lc_mask; int i_lc_size; int* i_lc; struct buffer_head* i_ext_bh; TYPE_1__* i_ac; } ;
struct TYPE_5__ {int /*<<< orphan*/  extension; } ;
struct TYPE_4__ {int ext; int key; } ;

/* Variables and functions */
 int AFFS_AC_MASK ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EIO ; 
 struct buffer_head* FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct inode*,struct buffer_head*,int) ; 
 struct buffer_head* FUNC6 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct buffer_head* FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *
FUNC12(struct inode *inode, u32 ext)
{
	struct super_block *sb = inode->i_sb;
	struct buffer_head *bh;
	u32 ext_key;
	u32 lc_idx, lc_off, ac_idx;
	u32 tmp, idx;

	if (ext == FUNC0(inode)->i_ext_last + 1) {
		/* read the next extended block from the current one */
		bh = FUNC0(inode)->i_ext_bh;
		ext_key = FUNC10(FUNC1(sb, bh)->extension);
		if (ext < FUNC0(inode)->i_extcnt)
			goto read_ext;
		FUNC2(ext > FUNC0(inode)->i_extcnt);
		bh = FUNC5(inode, bh, ext);
		if (FUNC4(bh))
			return bh;
		goto store_ext;
	}

	if (ext == 0) {
		/* we seek back to the file header block */
		ext_key = inode->i_ino;
		goto read_ext;
	}

	if (ext >= FUNC0(inode)->i_extcnt) {
		struct buffer_head *prev_bh;

		/* allocate a new extended block */
		FUNC2(ext > FUNC0(inode)->i_extcnt);

		/* get previous extended block */
		prev_bh = FUNC8(inode, ext - 1);
		if (FUNC4(prev_bh))
			return prev_bh;
		bh = FUNC5(inode, prev_bh, ext);
		FUNC7(prev_bh);
		if (FUNC4(bh))
			return bh;
		goto store_ext;
	}

again:
	/* check if there is an extended cache and whether it's large enough */
	lc_idx = ext >> FUNC0(inode)->i_lc_shift;
	lc_off = ext & FUNC0(inode)->i_lc_mask;

	if (lc_idx >= FUNC0(inode)->i_lc_size) {
		int err;

		err = FUNC9(inode, lc_idx);
		if (err)
			return FUNC3(err);
		goto again;
	}

	/* every n'th key we find in the linear cache */
	if (!lc_off) {
		ext_key = FUNC0(inode)->i_lc[lc_idx];
		goto read_ext;
	}

	/* maybe it's still in the associative cache */
	ac_idx = (ext - lc_idx - 1) & AFFS_AC_MASK;
	if (FUNC0(inode)->i_ac[ac_idx].ext == ext) {
		ext_key = FUNC0(inode)->i_ac[ac_idx].key;
		goto read_ext;
	}

	/* try to find one of the previous extended blocks */
	tmp = ext;
	idx = ac_idx;
	while (--tmp, --lc_off > 0) {
		idx = (idx - 1) & AFFS_AC_MASK;
		if (FUNC0(inode)->i_ac[idx].ext == tmp) {
			ext_key = FUNC0(inode)->i_ac[idx].key;
			goto find_ext;
		}
	}

	/* fall back to the linear cache */
	ext_key = FUNC0(inode)->i_lc[lc_idx];
find_ext:
	/* read all extended blocks until we find the one we need */
	//unlock cache
	do {
		bh = FUNC6(sb, ext_key);
		if (!bh)
			goto err_bread;
		ext_key = FUNC10(FUNC1(sb, bh)->extension);
		FUNC7(bh);
		tmp++;
	} while (tmp < ext);
	//lock cache

	/* store it in the associative cache */
	// recalculate ac_idx?
	FUNC0(inode)->i_ac[ac_idx].ext = ext;
	FUNC0(inode)->i_ac[ac_idx].key = ext_key;

read_ext:
	/* finally read the right extended block */
	//unlock cache
	bh = FUNC6(sb, ext_key);
	if (!bh)
		goto err_bread;
	//lock cache

store_ext:
	/* release old cached extended block and store the new one */
	FUNC7(FUNC0(inode)->i_ext_bh);
	FUNC0(inode)->i_ext_last = ext;
	FUNC0(inode)->i_ext_bh = bh;
	FUNC11(bh);

	return bh;

err_bread:
	FUNC7(bh);
	return FUNC3(-EIO);
}