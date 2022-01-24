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
struct TYPE_3__ {scalar_t__ rule; scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ filelock_change; } ;
struct ceph_mds_request {scalar_t__ r_op; int r_err; int r_num_caps; int /*<<< orphan*/  r_safe_completion; TYPE_2__ r_args; struct inode* r_inode; int /*<<< orphan*/  r_session; int /*<<< orphan*/  r_fill_mutex; int /*<<< orphan*/  r_req_flags; int /*<<< orphan*/  r_tid; int /*<<< orphan*/  r_completion; } ;
struct ceph_mds_client {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CEPH_LOCK_FCNTL ; 
 int CEPH_LOCK_FCNTL_INTR ; 
 scalar_t__ CEPH_LOCK_FLOCK ; 
 int CEPH_LOCK_FLOCK_INTR ; 
 scalar_t__ CEPH_LOCK_UNLOCK ; 
 scalar_t__ CEPH_MDS_OP_SETFILELOCK ; 
 int /*<<< orphan*/  CEPH_MDS_R_ABORTED ; 
 int /*<<< orphan*/  CEPH_MDS_R_GOT_RESULT ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC1 (struct ceph_mds_request*) ; 
 int FUNC2 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  USE_AUTH_MDS ; 
 struct ceph_mds_request* FUNC3 (struct ceph_mds_client*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ceph_mds_client*,struct inode*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct ceph_mds_client *mdsc,
                                         struct ceph_mds_request *req)
{
	struct ceph_mds_request *intr_req;
	struct inode *inode = req->r_inode;
	int err, lock_type;

	FUNC0(req->r_op != CEPH_MDS_OP_SETFILELOCK);
	if (req->r_args.filelock_change.rule == CEPH_LOCK_FCNTL)
		lock_type = CEPH_LOCK_FCNTL_INTR;
	else if (req->r_args.filelock_change.rule == CEPH_LOCK_FLOCK)
		lock_type = CEPH_LOCK_FLOCK_INTR;
	else
		FUNC0(1);
	FUNC0(req->r_args.filelock_change.type == CEPH_LOCK_UNLOCK);

	err = FUNC12(&req->r_completion);
	if (!err)
		return 0;

	FUNC6("ceph_lock_wait_for_completion: request %llu was interrupted\n",
	     req->r_tid);

	FUNC8(&mdsc->mutex);
	if (FUNC11(CEPH_MDS_R_GOT_RESULT, &req->r_req_flags)) {
		err = 0;
	} else {
		/*
		 * ensure we aren't running concurrently with
		 * ceph_fill_trace or ceph_readdir_prepopulate, which
		 * rely on locks (dir mutex) held by our caller.
		 */
		FUNC8(&req->r_fill_mutex);
		req->r_err = err;
		FUNC10(CEPH_MDS_R_ABORTED, &req->r_req_flags);
		FUNC9(&req->r_fill_mutex);

		if (!req->r_session) {
			// haven't sent the request
			err = 0;
		}
	}
	FUNC9(&mdsc->mutex);
	if (!err)
		return 0;

	intr_req = FUNC3(mdsc, CEPH_MDS_OP_SETFILELOCK,
					    USE_AUTH_MDS);
	if (FUNC1(intr_req))
		return FUNC2(intr_req);

	intr_req->r_inode = inode;
	FUNC7(inode);
	intr_req->r_num_caps = 1;

	intr_req->r_args.filelock_change = req->r_args.filelock_change;
	intr_req->r_args.filelock_change.rule = lock_type;
	intr_req->r_args.filelock_change.type = CEPH_LOCK_UNLOCK;

	err = FUNC4(mdsc, inode, intr_req);
	FUNC5(intr_req);

	if (err && err != -ERESTARTSYS)
		return err;

	FUNC13(&req->r_safe_completion);
	return 0;
}