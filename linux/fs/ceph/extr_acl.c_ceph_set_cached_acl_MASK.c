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
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CAP_XATTR_SHARED ; 
 scalar_t__ FUNC0 (struct ceph_inode_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ceph_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct inode *inode,
					int type, struct posix_acl *acl)
{
	struct ceph_inode_info *ci = FUNC1(inode);

	FUNC4(&ci->i_ceph_lock);
	if (FUNC0(ci, CEPH_CAP_XATTR_SHARED, 0))
		FUNC3(inode, type, acl);
	else
		FUNC2(inode, type);
	FUNC5(&ci->i_ceph_lock);
}