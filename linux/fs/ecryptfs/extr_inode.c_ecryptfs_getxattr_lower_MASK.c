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
struct inode {int i_opflags; } ;
struct dentry {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IOP_XATTR ; 
 int FUNC0 (struct dentry*,struct inode*,char const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

ssize_t
FUNC3(struct dentry *lower_dentry, struct inode *lower_inode,
			const char *name, void *value, size_t size)
{
	int rc;

	if (!(lower_inode->i_opflags & IOP_XATTR)) {
		rc = -EOPNOTSUPP;
		goto out;
	}
	FUNC1(lower_inode);
	rc = FUNC0(lower_dentry, lower_inode, name, value, size);
	FUNC2(lower_inode);
out:
	return rc;
}