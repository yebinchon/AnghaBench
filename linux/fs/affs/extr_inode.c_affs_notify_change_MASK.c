#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_flags; } ;

/* Variables and functions */
 int AFFS_MOUNT_SF_IMMUTABLE ; 
 int AFFS_MOUNT_SF_SETMODE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int EPERM ; 
 int /*<<< orphan*/  SF_QUIET ; 
 int /*<<< orphan*/  SF_SETGID ; 
 int /*<<< orphan*/  SF_SETUID ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct iattr*) ; 
 int FUNC10 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,scalar_t__) ; 

int
FUNC12(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC4(dentry);
	int error;

	FUNC8("notify_change(%lu,0x%x)\n", inode->i_ino, attr->ia_valid);

	error = FUNC10(dentry, attr);
	if (error)
		goto out;

	if (((attr->ia_valid & ATTR_UID) &&
	      FUNC2(FUNC0(inode->i_sb)->s_flags, SF_SETUID)) ||
	    ((attr->ia_valid & ATTR_GID) &&
	      FUNC2(FUNC0(inode->i_sb)->s_flags, SF_SETGID)) ||
	    ((attr->ia_valid & ATTR_MODE) &&
	     (FUNC0(inode->i_sb)->s_flags &
	      (AFFS_MOUNT_SF_SETMODE | AFFS_MOUNT_SF_IMMUTABLE)))) {
		if (!FUNC2(FUNC0(inode->i_sb)->s_flags, SF_QUIET))
			error = -EPERM;
		goto out;
	}

	if ((attr->ia_valid & ATTR_SIZE) &&
	    attr->ia_size != FUNC5(inode)) {
		error = FUNC6(inode, attr->ia_size);
		if (error)
			return error;

		FUNC11(inode, attr->ia_size);
		FUNC3(inode);
	}

	FUNC9(inode, attr);
	FUNC7(inode);

	if (attr->ia_valid & ATTR_MODE)
		FUNC1(inode);
out:
	return error;
}