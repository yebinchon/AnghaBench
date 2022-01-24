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
struct posix_acl {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC1 (struct p9_fid*,int /*<<< orphan*/ ,struct posix_acl*) ; 

int FUNC2(struct inode *inode, struct p9_fid *fid,
			struct posix_acl *dacl, struct posix_acl *acl)
{
	FUNC0(inode, ACL_TYPE_DEFAULT, dacl);
	FUNC0(inode, ACL_TYPE_ACCESS, acl);
	FUNC1(fid, ACL_TYPE_DEFAULT, dacl);
	FUNC1(fid, ACL_TYPE_ACCESS, acl);
	return 0;
}