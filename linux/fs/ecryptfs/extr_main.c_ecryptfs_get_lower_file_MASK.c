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
struct ecryptfs_inode_info {int /*<<< orphan*/  lower_file_mutex; int /*<<< orphan*/  lower_file_count; int /*<<< orphan*/  lower_file; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct ecryptfs_inode_info* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct dentry *dentry, struct inode *inode)
{
	struct ecryptfs_inode_info *inode_info;
	int count, rc = 0;

	inode_info = FUNC4(inode);
	FUNC5(&inode_info->lower_file_mutex);
	count = FUNC1(&inode_info->lower_file_count);
	if (FUNC0(count < 1))
		rc = -EINVAL;
	else if (count == 1) {
		rc = FUNC3(dentry,
					      &inode_info->lower_file);
		if (rc)
			FUNC2(&inode_info->lower_file_count, 0);
	}
	FUNC6(&inode_info->lower_file_mutex);
	return rc;
}