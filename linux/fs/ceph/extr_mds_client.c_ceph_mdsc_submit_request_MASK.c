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
struct ceph_mds_request {int r_err; scalar_t__ r_old_dentry_dir; scalar_t__ r_parent; scalar_t__ r_inode; } ;
struct ceph_mds_client {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CAP_PIN ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*,struct ceph_mds_request*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ceph_mds_request*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct ceph_mds_client *mdsc, struct inode *dir,
			      struct ceph_mds_request *req)
{
	int err;

	/* take CAP_PIN refs for r_inode, r_parent, r_old_dentry */
	if (req->r_inode)
		FUNC2(FUNC3(req->r_inode), CEPH_CAP_PIN);
	if (req->r_parent)
		FUNC2(FUNC3(req->r_parent), CEPH_CAP_PIN);
	if (req->r_old_dentry_dir)
		FUNC2(FUNC3(req->r_old_dentry_dir),
				  CEPH_CAP_PIN);

	FUNC4("submit_request on %p for inode %p\n", req, dir);
	FUNC5(&mdsc->mutex);
	FUNC1(mdsc, req, dir);
	FUNC0(mdsc, req);
	err = req->r_err;
	FUNC6(&mdsc->mutex);
	return err;
}