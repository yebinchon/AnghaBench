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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 struct inode* FUNC3 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*,struct inode*) ; 
 int FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

__attribute__((used)) static int
FUNC8(struct inode *directory_inode, struct dentry *ecryptfs_dentry,
		umode_t mode, bool excl)
{
	struct inode *ecryptfs_inode;
	int rc;

	ecryptfs_inode = FUNC3(directory_inode, ecryptfs_dentry,
					    mode);
	if (FUNC0(ecryptfs_inode)) {
		FUNC6(KERN_WARNING, "Failed to create file in"
				"lower filesystem\n");
		rc = FUNC1(ecryptfs_inode);
		goto out;
	}
	/* At this point, a file exists on "disk"; we need to make sure
	 * that this on disk file is prepared to be an ecryptfs file */
	rc = FUNC5(ecryptfs_dentry, ecryptfs_inode);
	if (rc) {
		FUNC4(directory_inode, ecryptfs_dentry,
				   ecryptfs_inode);
		FUNC7(ecryptfs_inode);
		goto out;
	}
	FUNC2(ecryptfs_dentry, ecryptfs_inode);
out:
	return rc;
}