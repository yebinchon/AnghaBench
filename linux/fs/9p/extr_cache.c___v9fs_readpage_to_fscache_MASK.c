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
struct v9fs_inode {int /*<<< orphan*/  vfs_inode; int /*<<< orphan*/  fscache; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 struct v9fs_inode* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct page*) ; 

void FUNC5(struct inode *inode, struct page *page)
{
	int ret;
	const struct v9fs_inode *v9inode = FUNC0(inode);

	FUNC3(P9_DEBUG_FSC, "inode %p page %p\n", inode, page);
	ret = FUNC1(v9inode->fscache, page,
				 FUNC2(&v9inode->vfs_inode), GFP_KERNEL);
	FUNC3(P9_DEBUG_FSC, "ret =  %d\n", ret);
	if (ret != 0)
		FUNC4(inode, page);
}