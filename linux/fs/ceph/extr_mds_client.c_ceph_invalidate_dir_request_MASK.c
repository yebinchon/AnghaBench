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
struct ceph_mds_request {scalar_t__ r_old_dentry; scalar_t__ r_dentry; struct inode* r_old_dentry_dir; struct inode* r_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct inode*,struct inode*) ; 

void FUNC3(struct ceph_mds_request *req)
{
	struct inode *dir = req->r_parent;
	struct inode *old_dir = req->r_old_dentry_dir;

	FUNC2("invalidate_dir_request %p %p (complete, lease(s))\n", dir, old_dir);

	FUNC0(dir);
	if (old_dir)
		FUNC0(old_dir);
	if (req->r_dentry)
		FUNC1(req->r_dentry);
	if (req->r_old_dentry)
		FUNC1(req->r_old_dentry);
}