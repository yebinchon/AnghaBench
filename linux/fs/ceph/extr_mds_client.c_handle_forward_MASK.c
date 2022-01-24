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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int iov_len; void* iov_base; } ;
struct TYPE_3__ {int /*<<< orphan*/  tid; } ;
struct ceph_msg {TYPE_2__ front; TYPE_1__ hdr; } ;
struct ceph_mds_session {int dummy; } ;
struct ceph_mds_request {scalar_t__ r_num_fwd; scalar_t__ r_resend_mds; scalar_t__ r_attempts; int /*<<< orphan*/  r_req_flags; scalar_t__ r_err; } ;
struct ceph_mds_client {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CEPH_MDS_R_ABORTED ; 
 int /*<<< orphan*/  CEPH_MDS_R_GOT_RESULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  bad ; 
 scalar_t__ FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ceph_mds_request* FUNC8 (struct ceph_mds_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ceph_mds_request*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct ceph_mds_client *mdsc,
			   struct ceph_mds_session *session,
			   struct ceph_msg *msg)
{
	struct ceph_mds_request *req;
	u64 tid = FUNC7(msg->hdr.tid);
	u32 next_mds;
	u32 fwd_seq;
	int err = -EINVAL;
	void *p = msg->front.iov_base;
	void *end = p + msg->front.iov_len;

	FUNC4(&p, end, 2*sizeof(u32), bad);
	next_mds = FUNC3(&p);
	fwd_seq = FUNC3(&p);

	FUNC9(&mdsc->mutex);
	req = FUNC8(mdsc, tid);
	if (!req) {
		FUNC6("forward tid %llu to mds%d - req dne\n", tid, next_mds);
		goto out;  /* dup reply? */
	}

	if (FUNC13(CEPH_MDS_R_ABORTED, &req->r_req_flags)) {
		FUNC6("forward tid %llu aborted, unregistering\n", tid);
		FUNC2(mdsc, req);
	} else if (fwd_seq <= req->r_num_fwd) {
		FUNC6("forward tid %llu to mds%d - old seq %d <= %d\n",
		     tid, next_mds, req->r_num_fwd, fwd_seq);
	} else {
		/* resend. forward race not possible; mds would drop */
		FUNC6("forward tid %llu to mds%d (we resend)\n", tid, next_mds);
		FUNC0(req->r_err);
		FUNC0(FUNC13(CEPH_MDS_R_GOT_RESULT, &req->r_req_flags));
		req->r_attempts = 0;
		req->r_num_fwd = fwd_seq;
		req->r_resend_mds = next_mds;
		FUNC12(req);
		FUNC1(mdsc, req);
	}
	FUNC5(req);
out:
	FUNC10(&mdsc->mutex);
	return;

bad:
	FUNC11("mdsc_handle_forward decode error err=%d\n", err);
}