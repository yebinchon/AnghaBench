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
struct ceph_mds_request {scalar_t__ r_tid; int r_err; scalar_t__ r_op; struct inode* r_unsafe_dir; int /*<<< orphan*/  r_gid; int /*<<< orphan*/  r_uid; scalar_t__ r_num_caps; int /*<<< orphan*/  r_caps_reservation; } ;
struct ceph_mds_client {scalar_t__ last_tid; scalar_t__ oldest_tid; int /*<<< orphan*/  request_tree; } ;

/* Variables and functions */
 scalar_t__ CEPH_MDS_OP_SETFILELOCK ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_request*) ; 
 int FUNC1 (struct ceph_mds_client*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ceph_mds_request*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct ceph_mds_request*,int) ; 

__attribute__((used)) static void FUNC8(struct ceph_mds_client *mdsc,
			       struct ceph_mds_request *req,
			       struct inode *dir)
{
	int ret = 0;

	req->r_tid = ++mdsc->last_tid;
	if (req->r_num_caps) {
		ret = FUNC1(mdsc, &req->r_caps_reservation,
					req->r_num_caps);
		if (ret < 0) {
			FUNC7("__register_request %p "
			       "failed to reserve caps: %d\n", req, ret);
			/* set req->r_err to fail early from __do_request */
			req->r_err = ret;
			return;
		}
	}
	FUNC4("__register_request %p tid %lld\n", req, req->r_tid);
	FUNC0(req);
	FUNC6(&mdsc->request_tree, req);

	req->r_uid = FUNC3();
	req->r_gid = FUNC2();

	if (mdsc->oldest_tid == 0 && req->r_op != CEPH_MDS_OP_SETFILELOCK)
		mdsc->oldest_tid = req->r_tid;

	if (dir) {
		FUNC5(dir);
		req->r_unsafe_dir = dir;
	}
}