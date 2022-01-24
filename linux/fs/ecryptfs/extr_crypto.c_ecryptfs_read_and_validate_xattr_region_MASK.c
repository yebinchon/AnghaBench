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
typedef  int /*<<< orphan*/  u8 ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ECRYPTFS_FILE_SIZE_BYTES ; 
 int ECRYPTFS_SIZE_AND_MARKER_BYTES ; 
 int /*<<< orphan*/  ECRYPTFS_XATTR_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dentry *dentry,
					    struct inode *inode)
{
	u8 file_size[ECRYPTFS_SIZE_AND_MARKER_BYTES];
	u8 *marker = file_size + ECRYPTFS_FILE_SIZE_BYTES;
	int rc;

	rc = FUNC1(FUNC0(dentry),
				     FUNC3(inode),
				     ECRYPTFS_XATTR_NAME, file_size,
				     ECRYPTFS_SIZE_AND_MARKER_BYTES);
	if (rc < 0)
		return rc;
	else if (rc < ECRYPTFS_SIZE_AND_MARKER_BYTES)
		return -EINVAL;
	rc = FUNC4(marker);
	if (!rc)
		FUNC2(file_size, inode);
	return rc;
}