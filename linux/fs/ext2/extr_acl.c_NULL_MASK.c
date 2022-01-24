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
struct posix_acl {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int FUNC0 (struct inode*,struct posix_acl*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**) ; 

int
FUNC4(struct inode *inode, struct posix_acl *acl, int type)
{
	int error;
	int update_mode = 0;
	umode_t mode = inode->i_mode;

	if (type == ACL_TYPE_ACCESS && acl) {
		error = FUNC3(inode, &mode, &acl);
		if (error)
			return error;
		update_mode = 1;
	}
	error = FUNC0(inode, acl, type);
	if (!error && update_mode) {
		inode->i_mode = mode;
		inode->i_ctime = FUNC1(inode);
		FUNC2(inode);
	}
	return error;
}