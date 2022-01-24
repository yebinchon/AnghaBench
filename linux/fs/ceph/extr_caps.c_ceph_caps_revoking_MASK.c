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
struct inode {int dummy; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; struct inode vfs_inode; } ;

/* Variables and functions */
 int FUNC0 (struct ceph_inode_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ceph_inode_info *ci, int mask)
{
	struct inode *inode = &ci->vfs_inode;
	int ret;

	FUNC3(&ci->i_ceph_lock);
	ret = FUNC0(ci, NULL, mask);
	FUNC4(&ci->i_ceph_lock);
	FUNC2("ceph_caps_revoking %p %s = %d\n", inode,
	     FUNC1(mask), ret);
	return ret;
}