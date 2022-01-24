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
struct dentry {struct dentry* d_parent; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC4(struct dentry *dentry)
{
	struct inode *inode = NULL;

	while (dentry && !FUNC0(dentry)) {
		inode = FUNC2(dentry);
		if (!inode || FUNC1(inode) == CEPH_NOSNAP)
			break;
		dentry = dentry->d_parent;
	}
	if (inode)
		inode = FUNC3(inode);
	return inode;
}