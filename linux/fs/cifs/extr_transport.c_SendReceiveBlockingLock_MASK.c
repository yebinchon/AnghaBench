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
struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct smb_hdr {scalar_t__ Command; int /*<<< orphan*/  smb_buf_length; } ;
struct mid_q_entry {scalar_t__ mid_state; int /*<<< orphan*/  resp_buf; int /*<<< orphan*/  callback; int /*<<< orphan*/  sequence_number; } ;
struct kvec {unsigned int iov_len; struct smb_hdr* iov_base; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; int sequence_number; int /*<<< orphan*/  response_q; int /*<<< orphan*/  srv_mutex; } ;

/* Variables and functions */
 int CIFSMaxBufSize ; 
 int /*<<< orphan*/  CIFS_BLOCKING_OP ; 
 scalar_t__ CifsExiting ; 
 scalar_t__ CifsGood ; 
 scalar_t__ CifsNew ; 
 int /*<<< orphan*/  DeleteMidQEntry ; 
 int EACCES ; 
 int EIO ; 
 int ENOENT ; 
 int ENOLCK ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int MAX_CIFS_HDR_SIZE ; 
 scalar_t__ MID_REQUEST_SUBMITTED ; 
 scalar_t__ MID_RESPONSE_RECEIVED ; 
 scalar_t__ SMB_COM_TRANSACTION2 ; 
 int /*<<< orphan*/  VFS ; 
 int FUNC0 (struct cifs_ses*,struct smb_hdr*,struct mid_q_entry**) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mid_q_entry*,struct TCP_Server_Info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC6 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC7 (struct mid_q_entry*) ; 
 int FUNC8 (struct smb_hdr*,struct TCP_Server_Info*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mid_q_entry*,struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct smb_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct TCP_Server_Info*,struct smb_rqst*,struct mid_q_entry*) ; 
 int FUNC16 (unsigned int const,struct cifs_tcon*,struct smb_hdr*,struct smb_hdr*) ; 
 int FUNC17 (struct TCP_Server_Info*,struct smb_hdr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ,int) ; 
 int FUNC21 (struct TCP_Server_Info*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC22 (struct TCP_Server_Info*,struct mid_q_entry*) ; 

int
FUNC23(const unsigned int xid, struct cifs_tcon *tcon,
	    struct smb_hdr *in_buf, struct smb_hdr *out_buf,
	    int *pbytes_returned)
{
	int rc = 0;
	int rstart = 0;
	struct mid_q_entry *midQ;
	struct cifs_ses *ses;
	unsigned int len = FUNC1(in_buf->smb_buf_length);
	struct kvec iov = { .iov_base = in_buf, .iov_len = len };
	struct smb_rqst rqst = { .rq_iov = &iov, .rq_nvec = 1 };
	unsigned int instance;
	struct TCP_Server_Info *server;

	if (tcon == NULL || tcon->ses == NULL) {
		FUNC3(VFS, "Null smb session\n");
		return -EIO;
	}
	ses = tcon->ses;
	server = ses->server;

	if (server == NULL) {
		FUNC3(VFS, "Null tcp session\n");
		return -EIO;
	}

	if (server->tcpStatus == CifsExiting)
		return -ENOENT;

	/* Ensure that we do not send more than 50 overlapping requests
	   to the same server. We may make this configurable later or
	   use ses->maxReq */

	if (len > CIFSMaxBufSize + MAX_CIFS_HDR_SIZE - 4) {
		FUNC10(VFS, "Illegal length, greater than maximum frame, %d\n",
			 len);
		return -EIO;
	}

	rc = FUNC21(server, CIFS_BLOCKING_OP, &instance);
	if (rc)
		return rc;

	/* make sure that we sign in the same order that we send on this socket
	   and avoid races inside tcp sendmsg code that could cause corruption
	   of smb data */

	FUNC13(&server->srv_mutex);

	rc = FUNC0(ses, in_buf, &midQ);
	if (rc) {
		FUNC14(&server->srv_mutex);
		return rc;
	}

	rc = FUNC8(in_buf, server, &midQ->sequence_number);
	if (rc) {
		FUNC4(midQ);
		FUNC14(&server->srv_mutex);
		return rc;
	}

	midQ->mid_state = MID_REQUEST_SUBMITTED;
	FUNC6(server);
	rc = FUNC17(server, in_buf, len);
	FUNC5(server);
	FUNC7(midQ);

	if (rc < 0)
		server->sequence_number -= 2;

	FUNC14(&server->srv_mutex);

	if (rc < 0) {
		FUNC4(midQ);
		return rc;
	}

	/* Wait for a reply - allow signals to interrupt. */
	rc = FUNC20(server->response_q,
		(!(midQ->mid_state == MID_REQUEST_SUBMITTED)) ||
		((server->tcpStatus != CifsGood) &&
		 (server->tcpStatus != CifsNew)));

	/* Were we interrupted by a signal ? */
	if ((rc == -ERESTARTSYS) &&
		(midQ->mid_state == MID_REQUEST_SUBMITTED) &&
		((server->tcpStatus == CifsGood) ||
		 (server->tcpStatus == CifsNew))) {

		if (in_buf->Command == SMB_COM_TRANSACTION2) {
			/* POSIX lock. We send a NT_CANCEL SMB to cause the
			   blocking lock to return. */
			rc = FUNC15(server, &rqst, midQ);
			if (rc) {
				FUNC4(midQ);
				return rc;
			}
		} else {
			/* Windows lock. We send a LOCKINGX_CANCEL_LOCK
			   to cause the blocking lock to return. */

			rc = FUNC16(xid, tcon, in_buf, out_buf);

			/* If we get -ENOLCK back the lock may have
			   already been removed. Don't exit in this case. */
			if (rc && rc != -ENOLCK) {
				FUNC4(midQ);
				return rc;
			}
		}

		rc = FUNC22(server, midQ);
		if (rc) {
			FUNC15(server, &rqst, midQ);
			FUNC18(&GlobalMid_Lock);
			if (midQ->mid_state == MID_REQUEST_SUBMITTED) {
				/* no longer considered to be "in-flight" */
				midQ->callback = DeleteMidQEntry;
				FUNC19(&GlobalMid_Lock);
				return rc;
			}
			FUNC19(&GlobalMid_Lock);
		}

		/* We got the response - restart system call. */
		rstart = 1;
	}

	rc = FUNC9(midQ, server);
	if (rc != 0)
		return rc;

	/* rcvd frame is ok */
	if (out_buf == NULL || midQ->mid_state != MID_RESPONSE_RECEIVED) {
		rc = -EIO;
		FUNC10(VFS, "Bad MID state?\n");
		goto out;
	}

	*pbytes_returned = FUNC11(midQ->resp_buf);
	FUNC12(out_buf, midQ->resp_buf, *pbytes_returned + 4);
	rc = FUNC2(midQ, server, 0);
out:
	FUNC4(midQ);
	if (rstart && rc == -EACCES)
		return -ERESTARTSYS;
	return rc;
}