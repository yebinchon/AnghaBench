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
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; } ;

/* Variables and functions */
 int FUNC0 (struct ceph_inode_info*) ; 
 struct ceph_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct inode *inode)
{
	struct ceph_inode_info *ci = FUNC1(inode);
	int ret;

	FUNC2(&ci->i_ceph_lock);
	ret = FUNC0(ci);
	FUNC3(&ci->i_ceph_lock);

	return ret;
}