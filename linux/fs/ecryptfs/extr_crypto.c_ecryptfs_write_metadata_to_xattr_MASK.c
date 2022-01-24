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
 int /*<<< orphan*/  ECRYPTFS_XATTR_NAME ; 
 int EOPNOTSUPP ; 
 int IOP_XATTR ; 
 int FUNC0 (struct dentry*,struct inode*,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static int
FUNC6(struct dentry *ecryptfs_dentry,
				 struct inode *ecryptfs_inode,
				 char *page_virt, size_t size)
{
	int rc;
	struct dentry *lower_dentry = FUNC2(ecryptfs_dentry);
	struct inode *lower_inode = FUNC1(lower_dentry);

	if (!(lower_inode->i_opflags & IOP_XATTR)) {
		rc = -EOPNOTSUPP;
		goto out;
	}

	FUNC4(lower_inode);
	rc = FUNC0(lower_dentry, lower_inode, ECRYPTFS_XATTR_NAME,
			    page_virt, size, 0);
	if (!rc && ecryptfs_inode)
		FUNC3(ecryptfs_inode, lower_inode);
	FUNC5(lower_inode);
out:
	return rc;
}