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
struct inode {int /*<<< orphan*/  i_link; int /*<<< orphan*/ * i_op; } ;
struct erofs_inode {int /*<<< orphan*/  xattr_shared_xattrs; } ;

/* Variables and functions */
 struct erofs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  erofs_fast_symlink_iops ; 
 int /*<<< orphan*/  erofs_inode_cachep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct erofs_inode*) ; 

__attribute__((used)) static void FUNC3(struct inode *inode)
{
	struct erofs_inode *vi = FUNC0(inode);

	/* be careful of RCU symlink path */
	if (inode->i_op == &erofs_fast_symlink_iops)
		FUNC1(inode->i_link);
	FUNC1(vi->xattr_shared_xattrs);

	FUNC2(erofs_inode_cachep, vi);
}