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
struct TYPE_4__ {scalar_t__ blkaddr; int /*<<< orphan*/  page; int /*<<< orphan*/  kaddr; int /*<<< orphan*/  ofs; } ;
struct listxattr_iter {int buffer_ofs; TYPE_1__ it; int /*<<< orphan*/  dentry; } ;
struct inode {struct super_block* i_sb; } ;
struct erofs_sb_info {int dummy; } ;
struct erofs_inode {unsigned int xattr_shared_count; int /*<<< orphan*/ * xattr_shared_xattrs; } ;
typedef  scalar_t__ erofs_blk_t ;

/* Variables and functions */
 struct erofs_inode* FUNC0 (struct inode* const) ; 
 struct erofs_sb_info* FUNC1 (struct super_block* const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block* const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_xattr_handlers ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (struct erofs_sb_info* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct erofs_sb_info* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct listxattr_iter *it)
{
	struct inode *const inode = FUNC4(it->dentry);
	struct erofs_inode *const vi = FUNC0(inode);
	struct super_block *const sb = inode->i_sb;
	struct erofs_sb_info *const sbi = FUNC1(sb);
	unsigned int i;
	int ret = 0;

	for (i = 0; i < vi->xattr_shared_count; ++i) {
		erofs_blk_t blkaddr =
			FUNC10(sbi, vi->xattr_shared_xattrs[i]);

		it->it.ofs = FUNC11(sbi, vi->xattr_shared_xattrs[i]);
		if (!i || blkaddr != it->it.blkaddr) {
			if (i)
				FUNC8(&it->it, true);

			it->it.page = FUNC5(sb, blkaddr);
			if (FUNC2(it->it.page))
				return FUNC3(it->it.page);

			it->it.kaddr = FUNC6(it->it.page);
			it->it.blkaddr = blkaddr;
		}

		ret = FUNC7(&it->it, &list_xattr_handlers, NULL);
		if (ret)
			break;
	}
	if (vi->xattr_shared_count)
		FUNC9(&it->it);

	return ret ? ret : it->buffer_ofs;
}