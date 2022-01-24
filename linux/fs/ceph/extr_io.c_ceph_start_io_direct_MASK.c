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
struct inode {int /*<<< orphan*/  i_rwsem; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_flags; } ;

/* Variables and functions */
 int CEPH_I_ODIRECT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_inode_info*,struct inode*) ; 
 struct ceph_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct inode *inode)
{
	struct ceph_inode_info *ci = FUNC2(inode);

	/* Be an optimist! */
	FUNC3(&inode->i_rwsem);
	if (FUNC0(ci->i_ceph_flags) & CEPH_I_ODIRECT)
		return;
	FUNC6(&inode->i_rwsem);
	/* Slow path.... */
	FUNC4(&inode->i_rwsem);
	FUNC1(ci, inode);
	FUNC5(&inode->i_rwsem);
}