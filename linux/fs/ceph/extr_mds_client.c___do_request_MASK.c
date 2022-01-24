#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ceph_mds_session {scalar_t__ s_state; int /*<<< orphan*/  s_con; int /*<<< orphan*/  s_waiting; } ;
struct ceph_mds_request {int r_err; int r_resend_mds; scalar_t__ r_request_started; int /*<<< orphan*/  r_request; int /*<<< orphan*/  r_wait; int /*<<< orphan*/  r_session; scalar_t__ r_timeout; scalar_t__ r_started; int /*<<< orphan*/  r_req_flags; } ;
struct ceph_mds_client {int mdsmap_err; int /*<<< orphan*/  waiting_for_map; TYPE_3__* mdsmap; TYPE_2__* fsc; } ;
struct TYPE_7__ {scalar_t__ m_epoch; } ;
struct TYPE_6__ {TYPE_1__* mount_options; int /*<<< orphan*/  mount_state; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MDS_R_ABORTED ; 
 int /*<<< orphan*/  CEPH_MDS_R_GOT_RESULT ; 
 scalar_t__ CEPH_MDS_SESSION_CLOSING ; 
 scalar_t__ CEPH_MDS_SESSION_HUNG ; 
 scalar_t__ CEPH_MDS_SESSION_NEW ; 
 scalar_t__ CEPH_MDS_SESSION_OPEN ; 
 scalar_t__ CEPH_MDS_SESSION_REJECTED ; 
 scalar_t__ CEPH_MDS_STATE_ACTIVE ; 
 scalar_t__ CEPH_MOUNT_MOUNTING ; 
 int CEPH_MOUNT_OPT_MOUNTWAIT ; 
 scalar_t__ CEPH_MOUNT_SHUTDOWN ; 
 int EACCES ; 
 int EIO ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ceph_mds_session*) ; 
 int FUNC1 (struct ceph_mds_session*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ceph_mds_session* FUNC3 (struct ceph_mds_client*,int) ; 
 int FUNC4 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int FUNC6 (struct ceph_mds_client*,struct ceph_mds_request*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct ceph_mds_session*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (struct ceph_mds_request*) ; 
 struct ceph_mds_session* FUNC20 (struct ceph_mds_client*,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC23(struct ceph_mds_client *mdsc,
			struct ceph_mds_request *req)
{
	struct ceph_mds_session *session = NULL;
	int mds = -1;
	int err = 0;

	if (req->r_err || FUNC21(CEPH_MDS_R_GOT_RESULT, &req->r_req_flags)) {
		if (FUNC21(CEPH_MDS_R_ABORTED, &req->r_req_flags))
			FUNC7(mdsc, req);
		return;
	}

	if (req->r_timeout &&
	    FUNC22(jiffies, req->r_started + req->r_timeout)) {
		FUNC15("do_request timed out\n");
		err = -EIO;
		goto finish;
	}
	if (FUNC2(mdsc->fsc->mount_state) == CEPH_MOUNT_SHUTDOWN) {
		FUNC15("do_request forced umount\n");
		err = -EIO;
		goto finish;
	}
	if (FUNC2(mdsc->fsc->mount_state) == CEPH_MOUNT_MOUNTING) {
		if (mdsc->mdsmap_err) {
			err = mdsc->mdsmap_err;
			FUNC15("do_request mdsmap err %d\n", err);
			goto finish;
		}
		if (mdsc->mdsmap->m_epoch == 0) {
			FUNC15("do_request no mdsmap, waiting for map\n");
			FUNC17(&req->r_wait, &mdsc->waiting_for_map);
			return;
		}
		if (!(mdsc->fsc->mount_options->flags &
		      CEPH_MOUNT_OPT_MOUNTWAIT) &&
		    !FUNC10(mdsc->mdsmap)) {
			err = -ENOENT;
			FUNC18("probably no mds server is up\n");
			goto finish;
		}
	}

	FUNC19(req);

	mds = FUNC4(mdsc, req);
	if (mds < 0 ||
	    FUNC9(mdsc->mdsmap, mds) < CEPH_MDS_STATE_ACTIVE) {
		FUNC15("do_request no mds or not active, waiting for map\n");
		FUNC17(&req->r_wait, &mdsc->waiting_for_map);
		return;
	}

	/* get, open session */
	session = FUNC3(mdsc, mds);
	if (!session) {
		session = FUNC20(mdsc, mds);
		if (FUNC0(session)) {
			err = FUNC1(session);
			goto finish;
		}
	}
	req->r_session = FUNC16(session);

	FUNC15("do_request mds%d session %p state %s\n", mds, session,
	     FUNC13(session->s_state));
	if (session->s_state != CEPH_MDS_SESSION_OPEN &&
	    session->s_state != CEPH_MDS_SESSION_HUNG) {
		if (session->s_state == CEPH_MDS_SESSION_REJECTED) {
			err = -EACCES;
			goto out_session;
		}
		if (session->s_state == CEPH_MDS_SESSION_NEW ||
		    session->s_state == CEPH_MDS_SESSION_CLOSING)
			FUNC5(mdsc, session);
		FUNC17(&req->r_wait, &session->s_waiting);
		goto out_session;
	}

	/* send request */
	req->r_resend_mds = -1;   /* forget any previous mds hint */

	if (req->r_request_started == 0)   /* note request start time */
		req->r_request_started = jiffies;

	err = FUNC6(mdsc, req, mds, false);
	if (!err) {
		FUNC11(req->r_request);
		FUNC8(&session->s_con, req->r_request);
	}

out_session:
	FUNC12(session);
finish:
	if (err) {
		FUNC15("__do_request early error %d\n", err);
		req->r_err = err;
		FUNC14(mdsc, req);
		FUNC7(mdsc, req);
	}
	return;
}