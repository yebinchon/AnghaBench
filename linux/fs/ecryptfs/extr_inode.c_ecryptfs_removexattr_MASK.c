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

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IOP_XATTR ; 
 int FUNC0 (struct dentry*,char const*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, struct inode *inode,
				const char *name)
{
	int rc;
	struct dentry *lower_dentry;
	struct inode *lower_inode;

	lower_dentry = FUNC1(dentry);
	lower_inode = FUNC2(inode);
	if (!(lower_inode->i_opflags & IOP_XATTR)) {
		rc = -EOPNOTSUPP;
		goto out;
	}
	FUNC3(lower_inode);
	rc = FUNC0(lower_dentry, name);
	FUNC4(lower_inode);
out:
	return rc;
}