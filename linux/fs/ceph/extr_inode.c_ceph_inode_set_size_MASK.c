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
struct inode {int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_size; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int FUNC0 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ceph_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

bool FUNC7(struct inode *inode, loff_t size)
{
	struct ceph_inode_info *ci = FUNC2(inode);
	bool ret;

	FUNC5(&ci->i_ceph_lock);
	FUNC3("set_size %p %llu -> %llu\n", inode, inode->i_size, size);
	FUNC4(inode, size);
	inode->i_blocks = FUNC1(size);

	ret = FUNC0(ci);

	FUNC6(&ci->i_ceph_lock);
	return ret;
}