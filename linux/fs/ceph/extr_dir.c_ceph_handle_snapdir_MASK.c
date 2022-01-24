#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; int /*<<< orphan*/  d_parent; int /*<<< orphan*/  d_sb; } ;
struct ceph_mds_request {int dummy; } ;
struct ceph_fs_client {TYPE_1__* mount_options; } ;
struct TYPE_3__ {int /*<<< orphan*/  snapdir_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CEPH_NOSNAP ; 
 int ENOENT ; 
 struct inode* FUNC1 (struct inode*) ; 
 struct ceph_fs_client* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct dentry*,struct dentry*,struct inode*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct ceph_mds_request *req,
			struct dentry *dentry, int err)
{
	struct ceph_fs_client *fsc = FUNC2(dentry->d_sb);
	struct inode *parent = FUNC5(dentry->d_parent); /* we hold i_mutex */

	/* .snap dir? */
	if (err == -ENOENT &&
	    FUNC3(parent) == CEPH_NOSNAP &&
	    FUNC8(dentry->d_name.name,
		   fsc->mount_options->snapdir_name) == 0) {
		struct inode *inode = FUNC1(parent);
		FUNC7("ENOENT on snapdir %p '%pd', linking to snapdir %p\n",
		     dentry, dentry, inode);
		FUNC0(!FUNC6(dentry));
		FUNC4(dentry, inode);
		err = 0;
	}
	return err;
}