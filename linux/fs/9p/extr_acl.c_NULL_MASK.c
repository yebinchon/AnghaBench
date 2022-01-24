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
struct v9fs_session_info {int flags; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int V9FS_ACCESS_CLIENT ; 
 int V9FS_ACCESS_MASK ; 
 int V9FS_ACL_MASK ; 
 int V9FS_POSIX_ACL ; 
 struct posix_acl* FUNC0 (struct inode*,int) ; 
 struct v9fs_session_info* FUNC1 (struct inode*) ; 

struct posix_acl *FUNC2(struct inode *inode, int type)
{
	struct v9fs_session_info *v9ses;

	v9ses = FUNC1(inode);
	if (((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT) ||
			((v9ses->flags & V9FS_ACL_MASK) != V9FS_POSIX_ACL)) {
		/*
		 * On access = client  and acl = on mode get the acl
		 * values from the server
		 */
		return NULL;
	}
	return FUNC0(inode, type);

}