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
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 

__attribute__((used)) static struct posix_acl *FUNC3(struct inode *inode, int type)
{
	struct posix_acl *acl;
	/*
	 * 9p Always cache the acl value when
	 * instantiating the inode (v9fs_inode_from_fid)
	 */
	acl = FUNC1(inode, type);
	FUNC0(FUNC2(acl));
	return acl;
}