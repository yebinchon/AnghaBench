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
struct ceph_inode_info {int i_ceph_flags; int /*<<< orphan*/  i_ceph_lock; } ;

/* Variables and functions */
 int CEPH_I_ODIRECT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ceph_inode_info *ci, struct inode *inode)
{
	FUNC2(&inode->i_rwsem);

	if (FUNC0(ci->i_ceph_flags) & CEPH_I_ODIRECT) {
		FUNC3(&ci->i_ceph_lock);
		ci->i_ceph_flags &= ~CEPH_I_ODIRECT;
		FUNC4(&ci->i_ceph_lock);
		FUNC1(inode);
	}
}