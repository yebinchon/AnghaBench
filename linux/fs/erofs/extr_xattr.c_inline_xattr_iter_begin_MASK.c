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
struct xattr_iter {int /*<<< orphan*/  page; int /*<<< orphan*/  kaddr; int /*<<< orphan*/  blkaddr; int /*<<< orphan*/  ofs; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct erofs_sb_info {int dummy; } ;
struct erofs_inode {unsigned int xattr_isize; unsigned int inode_isize; int /*<<< orphan*/  nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOATTR ; 
 struct erofs_inode* FUNC1 (struct inode*) ; 
 struct erofs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct erofs_sb_info* const,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct xattr_iter *it,
				   struct inode *inode)
{
	struct erofs_inode *const vi = FUNC1(inode);
	struct erofs_sb_info *const sbi = FUNC2(inode->i_sb);
	unsigned int xattr_header_sz, inline_xattr_ofs;

	xattr_header_sz = FUNC9(inode);
	if (xattr_header_sz >= vi->xattr_isize) {
		FUNC0(xattr_header_sz > vi->xattr_isize);
		return -ENOATTR;
	}

	inline_xattr_ofs = vi->inode_isize + xattr_header_sz;

	it->blkaddr = FUNC5(FUNC8(sbi, vi->nid) + inline_xattr_ofs);
	it->ofs = FUNC6(FUNC8(sbi, vi->nid) + inline_xattr_ofs);

	it->page = FUNC7(inode->i_sb, it->blkaddr);
	if (FUNC3(it->page))
		return FUNC4(it->page);

	it->kaddr = FUNC10(it->page);
	return vi->xattr_isize - xattr_header_sz;
}