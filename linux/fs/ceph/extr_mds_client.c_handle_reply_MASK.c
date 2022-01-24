#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  struct ceph_mds_request* u64 ;
struct ceph_snap_realm {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  tid; } ;
struct TYPE_8__ {int iov_len; struct ceph_mds_reply_head* iov_base; } ;
struct ceph_msg {TYPE_4__ hdr; TYPE_3__ front; } ;
struct TYPE_6__ {struct ceph_mds_request* peer_features; } ;
struct ceph_mds_session {int s_mds; int /*<<< orphan*/  s_mutex; TYPE_1__ s_con; int /*<<< orphan*/  s_features; int /*<<< orphan*/  s_unsafe; struct ceph_mds_client* s_mdsc; } ;
struct ceph_mds_reply_info_parsed {scalar_t__ snapblob_len; scalar_t__ snapblob; } ;
struct ceph_mds_request {int r_resend_mds; scalar_t__ r_direct_mode; scalar_t__ r_op; int r_err; int /*<<< orphan*/  r_req_flags; int /*<<< orphan*/  r_reply; int /*<<< orphan*/  r_caps_reservation; int /*<<< orphan*/  r_unsafe_target_item; scalar_t__ r_target_inode; int /*<<< orphan*/  r_fill_mutex; struct ceph_mds_session* r_session; struct ceph_mds_reply_info_parsed r_reply_info; int /*<<< orphan*/  r_unsafe_dir_item; scalar_t__ r_unsafe_dir; int /*<<< orphan*/  r_unsafe_item; struct ceph_mds_request* r_tid; } ;
struct ceph_mds_reply_head {int /*<<< orphan*/  op; scalar_t__ safe; int /*<<< orphan*/  result; } ;
struct ceph_mds_client {int /*<<< orphan*/  mutex; int /*<<< orphan*/  snap_rwsem; TYPE_2__* fsc; int /*<<< orphan*/  safe_umount_waiters; scalar_t__ stopping; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_unsafe_lock; int /*<<< orphan*/  i_unsafe_iops; int /*<<< orphan*/  i_unsafe_dirops; } ;
struct TYPE_10__ {struct ceph_mds_request* journal_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPHFS_FEATURE_REPLY_ENCODING ; 
 scalar_t__ CEPH_MDS_OP_LSSNAP ; 
 scalar_t__ CEPH_MDS_OP_READDIR ; 
 int CEPH_MDS_OP_RMSNAP ; 
 int /*<<< orphan*/  CEPH_MDS_R_ABORTED ; 
 int /*<<< orphan*/  CEPH_MDS_R_GOT_RESULT ; 
 int /*<<< orphan*/  CEPH_MDS_R_GOT_SAFE ; 
 int /*<<< orphan*/  CEPH_MDS_R_GOT_UNSAFE ; 
 int ESTALE ; 
 scalar_t__ USE_AUTH_MDS ; 
 int FUNC0 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ceph_mds_request*) ; 
 struct ceph_inode_info* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_mds_client*,struct ceph_snap_realm*) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_mds_request*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC11 (struct ceph_mds_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ceph_mds_client*,scalar_t__,scalar_t__,int,struct ceph_snap_realm**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 struct ceph_mds_request* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ceph_mds_request* FUNC22 (struct ceph_mds_client*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (struct ceph_msg*,struct ceph_mds_reply_info_parsed*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC33(struct ceph_mds_session *session, struct ceph_msg *msg)
{
	struct ceph_mds_client *mdsc = session->s_mdsc;
	struct ceph_mds_request *req;
	struct ceph_mds_reply_head *head = msg->front.iov_base;
	struct ceph_mds_reply_info_parsed *rinfo;  /* parsed reply info */
	struct ceph_snap_realm *realm;
	u64 tid;
	int err, result;
	int mds = session->s_mds;

	if (msg->front.iov_len < sizeof(*head)) {
		FUNC26("mdsc_handle_reply got corrupt (short) reply\n");
		FUNC7(msg);
		return;
	}

	/* get request, session */
	tid = FUNC20(msg->hdr.tid);
	FUNC23(&mdsc->mutex);
	req = FUNC22(mdsc, tid);
	if (!req) {
		FUNC15("handle_reply on unknown tid %llu\n", tid);
		FUNC24(&mdsc->mutex);
		return;
	}
	FUNC15("handle_reply %p\n", req);

	/* correct session? */
	if (req->r_session != session) {
		FUNC26("mdsc_handle_reply got %llu on session mds%d"
		       " not mds%d\n", tid, session->s_mds,
		       req->r_session ? req->r_session->s_mds : -1);
		FUNC24(&mdsc->mutex);
		goto out;
	}

	/* dup? */
	if ((FUNC31(CEPH_MDS_R_GOT_UNSAFE, &req->r_req_flags) && !head->safe) ||
	    (FUNC31(CEPH_MDS_R_GOT_SAFE, &req->r_req_flags) && head->safe)) {
		FUNC27("got a dup %s reply on %llu from mds%d\n",
			   head->safe ? "safe" : "unsafe", tid, mds);
		FUNC24(&mdsc->mutex);
		goto out;
	}
	if (FUNC31(CEPH_MDS_R_GOT_SAFE, &req->r_req_flags)) {
		FUNC27("got unsafe after safe on %llu from mds%d\n",
			   tid, mds);
		FUNC24(&mdsc->mutex);
		goto out;
	}

	result = FUNC19(head->result);

	/*
	 * Handle an ESTALE
	 * if we're not talking to the authority, send to them
	 * if the authority has changed while we weren't looking,
	 * send to new authority
	 * Otherwise we just have to return an ESTALE
	 */
	if (result == -ESTALE) {
		FUNC15("got ESTALE on request %llu\n", req->r_tid);
		req->r_resend_mds = -1;
		if (req->r_direct_mode != USE_AUTH_MDS) {
			FUNC15("not using auth, setting for that now\n");
			req->r_direct_mode = USE_AUTH_MDS;
			FUNC1(mdsc, req);
			FUNC24(&mdsc->mutex);
			goto out;
		} else  {
			int mds = FUNC0(mdsc, req);
			if (mds >= 0 && mds != req->r_session->s_mds) {
				FUNC15("but auth changed, so resending\n");
				FUNC1(mdsc, req);
				FUNC24(&mdsc->mutex);
				goto out;
			}
		}
		FUNC15("have to return ESTALE on request %llu\n", req->r_tid);
	}


	if (head->safe) {
		FUNC28(CEPH_MDS_R_GOT_SAFE, &req->r_req_flags);
		FUNC3(mdsc, req);

		if (FUNC31(CEPH_MDS_R_GOT_UNSAFE, &req->r_req_flags)) {
			/*
			 * We already handled the unsafe response, now do the
			 * cleanup.  No need to examine the response; the MDS
			 * doesn't include any result info in the safe
			 * response.  And even if it did, there is nothing
			 * useful we could do with a revised return value.
			 */
			FUNC15("got safe reply %llu, mds%d\n", tid, mds);

			/* last unsafe request during umount? */
			if (mdsc->stopping && !FUNC2(mdsc))
				FUNC13(&mdsc->safe_umount_waiters);
			FUNC24(&mdsc->mutex);
			goto out;
		}
	} else {
		FUNC28(CEPH_MDS_R_GOT_UNSAFE, &req->r_req_flags);
		FUNC21(&req->r_unsafe_item, &req->r_session->s_unsafe);
		if (req->r_unsafe_dir) {
			struct ceph_inode_info *ci =
					FUNC5(req->r_unsafe_dir);
			FUNC29(&ci->i_unsafe_lock);
			FUNC21(&req->r_unsafe_dir_item,
				      &ci->i_unsafe_dirops);
			FUNC30(&ci->i_unsafe_lock);
		}
	}

	FUNC15("handle_reply tid %lld result %d\n", tid, result);
	rinfo = &req->r_reply_info;
	if (FUNC31(CEPHFS_FEATURE_REPLY_ENCODING, &session->s_features))
		err = FUNC25(msg, rinfo, (u64)-1);
	else
		err = FUNC25(msg, rinfo, session->s_con.peer_features);
	FUNC24(&mdsc->mutex);

	FUNC23(&session->s_mutex);
	if (err < 0) {
		FUNC26("mdsc_handle_reply got corrupt reply mds%d(tid:%lld)\n", mds, tid);
		FUNC7(msg);
		goto out_err;
	}

	/* snap trace */
	realm = NULL;
	if (rinfo->snapblob_len) {
		FUNC17(&mdsc->snap_rwsem);
		FUNC12(mdsc, rinfo->snapblob,
				rinfo->snapblob + rinfo->snapblob_len,
				FUNC19(head->op) == CEPH_MDS_OP_RMSNAP,
				&realm);
		FUNC18(&mdsc->snap_rwsem);
	} else {
		FUNC16(&mdsc->snap_rwsem);
	}

	/* insert trace into our cache */
	FUNC23(&req->r_fill_mutex);
	current->journal_info = req;
	err = FUNC4(mdsc->fsc->sb, req);
	if (err == 0) {
		if (result == 0 && (req->r_op == CEPH_MDS_OP_READDIR ||
				    req->r_op == CEPH_MDS_OP_LSSNAP))
			FUNC10(req, req->r_session);
	}
	current->journal_info = NULL;
	FUNC24(&req->r_fill_mutex);

	FUNC32(&mdsc->snap_rwsem);
	if (realm)
		FUNC9(mdsc, realm);

	if (err == 0) {
		if (req->r_target_inode &&
		    FUNC31(CEPH_MDS_R_GOT_UNSAFE, &req->r_req_flags)) {
			struct ceph_inode_info *ci =
				FUNC5(req->r_target_inode);
			FUNC29(&ci->i_unsafe_lock);
			FUNC21(&req->r_unsafe_target_item,
				      &ci->i_unsafe_iops);
			FUNC30(&ci->i_unsafe_lock);
		}

		FUNC11(mdsc, &req->r_caps_reservation);
	}
out_err:
	FUNC23(&mdsc->mutex);
	if (!FUNC31(CEPH_MDS_R_ABORTED, &req->r_req_flags)) {
		if (err) {
			req->r_err = err;
		} else {
			req->r_reply =  FUNC8(msg);
			FUNC28(CEPH_MDS_R_GOT_RESULT, &req->r_req_flags);
		}
	} else {
		FUNC15("reply arrived after request %lld was aborted\n", tid);
	}
	FUNC24(&mdsc->mutex);

	FUNC24(&session->s_mutex);

	/* kick calling process */
	FUNC14(mdsc, req);
out:
	FUNC6(req);
	return;
}