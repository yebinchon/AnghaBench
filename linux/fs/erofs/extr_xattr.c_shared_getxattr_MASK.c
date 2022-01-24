#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_4__ {scalar_t__ blkaddr; int /*<<< orphan*/  page; int /*<<< orphan*/  kaddr; int /*<<< orphan*/  ofs; } ;
struct getxattr_iter {int buffer_size; TYPE_1__ it; } ;
struct erofs_sb_info {int dummy; } ;
struct erofs_inode {unsigned int xattr_shared_count; int /*<<< orphan*/ * xattr_shared_xattrs; } ;
typedef  scalar_t__ erofs_blk_t ;

/* Variables and functions */
 int ENOATTR ; 
 struct erofs_inode* FUNC0 (struct inode*) ; 
 struct erofs_sb_info* FUNC1 (struct super_block* const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block* const,scalar_t__) ; 
 int /*<<< orphan*/  find_xattr_handlers ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct erofs_sb_info* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct erofs_sb_info* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct getxattr_iter *it)
{
	struct erofs_inode *const vi = FUNC0(inode);
	struct super_block *const sb = inode->i_sb;
	struct erofs_sb_info *const sbi = FUNC1(sb);
	unsigned int i;
	int ret = -ENOATTR;

	for (i = 0; i < vi->xattr_shared_count; ++i) {
		erofs_blk_t blkaddr =
			FUNC9(sbi, vi->xattr_shared_xattrs[i]);

		it->it.ofs = FUNC10(sbi, vi->xattr_shared_xattrs[i]);

		if (!i || blkaddr != it->it.blkaddr) {
			if (i)
				FUNC7(&it->it, true);

			it->it.page = FUNC4(sb, blkaddr);
			if (FUNC2(it->it.page))
				return FUNC3(it->it.page);

			it->it.kaddr = FUNC5(it->it.page);
			it->it.blkaddr = blkaddr;
		}

		ret = FUNC6(&it->it, &find_xattr_handlers, NULL);
		if (ret != -ENOATTR)
			break;
	}
	if (vi->xattr_shared_count)
		FUNC8(&it->it);

	return ret ? ret : it->buffer_size;
}