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
struct inode {unsigned int i_size; char* i_link; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct erofs_inode {scalar_t__ datalayout; int /*<<< orphan*/  nid; scalar_t__ xattr_isize; scalar_t__ inode_isize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFSCORRUPTED ; 
 int ENOMEM ; 
 struct erofs_inode* FUNC1 (struct inode*) ; 
 scalar_t__ EROFS_INODE_FLAT_INLINE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  erofs_fast_symlink_iops ; 
 int /*<<< orphan*/  erofs_symlink_iops ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, void *data,
			      unsigned int m_pofs)
{
	struct erofs_inode *vi = FUNC1(inode);
	char *lnk;

	/* if it cannot be handled with fast symlink scheme */
	if (vi->datalayout != EROFS_INODE_FLAT_INLINE ||
	    inode->i_size >= PAGE_SIZE) {
		inode->i_op = &erofs_symlink_iops;
		return 0;
	}

	lnk = FUNC4(inode->i_size + 1, GFP_KERNEL);
	if (!lnk)
		return -ENOMEM;

	m_pofs += vi->inode_isize + vi->xattr_isize;
	/* inline symlink data shouldn't cross page boundary as well */
	if (m_pofs + inode->i_size > PAGE_SIZE) {
		FUNC3(lnk);
		FUNC2(inode->i_sb,
			  "inline data cross block boundary @ nid %llu",
			  vi->nid);
		FUNC0(1);
		return -EFSCORRUPTED;
	}

	FUNC5(lnk, data + m_pofs, inode->i_size);
	lnk[inode->i_size] = '\0';

	inode->i_link = lnk;
	inode->i_op = &erofs_fast_symlink_iops;
	return 0;
}