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
typedef  int /*<<< orphan*/  uint ;
struct xattr_iter {scalar_t__ ofs; scalar_t__ kaddr; void* page; int /*<<< orphan*/  blkaddr; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct erofs_xattr_ibody_header {unsigned int h_shared_count; } ;
struct erofs_sb_info {int dummy; } ;
struct erofs_inode {int xattr_isize; unsigned int xattr_shared_count; int /*<<< orphan*/  flags; int /*<<< orphan*/ * xattr_shared_xattrs; scalar_t__ inode_isize; int /*<<< orphan*/  nid; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFSCORRUPTED ; 
 int ENOATTR ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ERESTARTSYS ; 
 scalar_t__ EROFS_BLKSIZ ; 
 struct erofs_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EROFS_I_BL_XATTR_BIT ; 
 int /*<<< orphan*/  EROFS_I_EA_INITED_BIT ; 
 struct erofs_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,int,...) ; 
 void* FUNC9 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct erofs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (void*) ; 
 scalar_t__ FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct xattr_iter*,int) ; 

__attribute__((used)) static int FUNC20(struct inode *inode)
{
	struct erofs_inode *const vi = FUNC1(inode);
	struct xattr_iter it;
	unsigned int i;
	struct erofs_xattr_ibody_header *ih;
	struct super_block *sb;
	struct erofs_sb_info *sbi;
	bool atomic_map;
	int ret = 0;

	/* the most case is that xattrs of this inode are initialized. */
	if (FUNC17(EROFS_I_EA_INITED_BIT, &vi->flags))
		return 0;

	if (FUNC18(&vi->flags, EROFS_I_BL_XATTR_BIT, TASK_KILLABLE))
		return -ERESTARTSYS;

	/* someone has initialized xattrs for us? */
	if (FUNC17(EROFS_I_EA_INITED_BIT, &vi->flags))
		goto out_unlock;

	/*
	 * bypass all xattr operations if ->xattr_isize is not greater than
	 * sizeof(struct erofs_xattr_ibody_header), in detail:
	 * 1) it is not enough to contain erofs_xattr_ibody_header then
	 *    ->xattr_isize should be 0 (it means no xattr);
	 * 2) it is just to contain erofs_xattr_ibody_header, which is on-disk
	 *    undefined right now (maybe use later with some new sb feature).
	 */
	if (vi->xattr_isize == sizeof(struct erofs_xattr_ibody_header)) {
		FUNC8(inode->i_sb,
			  "xattr_isize %d of nid %llu is not supported yet",
			  vi->xattr_isize, vi->nid);
		ret = -EOPNOTSUPP;
		goto out_unlock;
	} else if (vi->xattr_isize < sizeof(struct erofs_xattr_ibody_header)) {
		if (vi->xattr_isize) {
			FUNC8(inode->i_sb,
				  "bogus xattr ibody @ nid %llu", vi->nid);
			FUNC0(1);
			ret = -EFSCORRUPTED;
			goto out_unlock;	/* xattr ondisk layout error */
		}
		ret = -ENOATTR;
		goto out_unlock;
	}

	sb = inode->i_sb;
	sbi = FUNC2(sb);
	it.blkaddr = FUNC6(FUNC10(sbi, vi->nid) + vi->inode_isize);
	it.ofs = FUNC7(FUNC10(sbi, vi->nid) + vi->inode_isize);

	it.page = FUNC9(sb, it.blkaddr);
	if (FUNC3(it.page)) {
		ret = FUNC4(it.page);
		goto out_unlock;
	}

	/* read in shared xattr array (non-atomic, see kmalloc below) */
	it.kaddr = FUNC13(it.page);
	atomic_map = false;

	ih = (struct erofs_xattr_ibody_header *)(it.kaddr + it.ofs);

	vi->xattr_shared_count = ih->h_shared_count;
	vi->xattr_shared_xattrs = FUNC12(vi->xattr_shared_count,
						sizeof(uint), GFP_KERNEL);
	if (!vi->xattr_shared_xattrs) {
		FUNC19(&it, atomic_map);
		ret = -ENOMEM;
		goto out_unlock;
	}

	/* let's skip ibody header */
	it.ofs += sizeof(struct erofs_xattr_ibody_header);

	for (i = 0; i < vi->xattr_shared_count; ++i) {
		if (it.ofs >= EROFS_BLKSIZ) {
			/* cannot be unaligned */
			FUNC0(it.ofs != EROFS_BLKSIZ);
			FUNC19(&it, atomic_map);

			it.page = FUNC9(sb, ++it.blkaddr);
			if (FUNC3(it.page)) {
				FUNC11(vi->xattr_shared_xattrs);
				vi->xattr_shared_xattrs = NULL;
				ret = FUNC4(it.page);
				goto out_unlock;
			}

			it.kaddr = FUNC14(it.page);
			atomic_map = true;
			it.ofs = 0;
		}
		vi->xattr_shared_xattrs[i] =
			FUNC15(*(__le32 *)(it.kaddr + it.ofs));
		it.ofs += sizeof(__le32);
	}
	FUNC19(&it, atomic_map);

	FUNC16(EROFS_I_EA_INITED_BIT, &vi->flags);

out_unlock:
	FUNC5(EROFS_I_BL_XATTR_BIT, &vi->flags);
	return ret;
}