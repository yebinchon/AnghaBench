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
struct smb_hdr {int /*<<< orphan*/  smb_buf_length; } ;
struct mid_q_entry {scalar_t__ mid_state; int /*<<< orphan*/  resp_buf; int /*<<< orphan*/  callback; int /*<<< orphan*/  sequence_number; } ;
struct kvec {unsigned int iov_len; struct smb_hdr* iov_base; } ;
struct cifs_ses {struct TCP_Server_Info* server; } ;
struct cifs_credits {int value; int /*<<< orphan*/  instance; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; int sequence_number; int /*<<< orphan*/  srv_mutex; } ;

/* Variables and functions */
 int CIFSMaxBufSize ; 
 scalar_t__ CifsExiting ; 
 int /*<<< orphan*/  DeleteMidQEntry ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int MAX_CIFS_HDR_SIZE ; 
 scalar_t__ MID_REQUEST_SUBMITTED ; 
 scalar_t__ MID_RESPONSE_RECEIVED ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (struct TCP_Server_Info*,struct cifs_credits*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cifs_ses*,struct smb_hdr*,struct mid_q_entry**) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mid_q_entry*,struct TCP_Server_Info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC7 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC8 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (struct smb_hdr*,struct TCP_Server_Info*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct mid_q_entry*,struct TCP_Server_Info*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct smb_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct TCP_Server_Info*,struct smb_rqst*,struct mid_q_entry*) ; 
 int FUNC17 (struct TCP_Server_Info*,struct smb_hdr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct TCP_Server_Info*,int const,int /*<<< orphan*/ *) ; 
 int FUNC21 (struct TCP_Server_Info*,struct mid_q_entry*) ; 

int
FUNC22(const unsigned int xid, struct cifs_ses *ses,
	    struct smb_hdr *in_buf, struct smb_hdr *out_buf,
	    int *pbytes_returned, const int flags)
{
	int rc = 0;
	struct mid_q_entry *midQ;
	unsigned int len = FUNC2(in_buf->smb_buf_length);
	struct kvec iov = { .iov_base = in_buf, .iov_len = len };
	struct smb_rqst rqst = { .rq_iov = &iov, .rq_nvec = 1 };
	struct cifs_credits credits = { .value = 1, .instance = 0 };
	struct TCP_Server_Info *server;

	if (ses == NULL) {
		FUNC4(VFS, "Null smb session\n");
		return -EIO;
	}
	server = ses->server;
	if (server == NULL) {
		FUNC4(VFS, "Null tcp session\n");
		return -EIO;
	}

	if (server->tcpStatus == CifsExiting)
		return -ENOENT;

	/* Ensure that we do not send more than 50 overlapping requests
	   to the same server. We may make this configurable later or
	   use ses->maxReq */

	if (len > CIFSMaxBufSize + MAX_CIFS_HDR_SIZE - 4) {
		FUNC9(VFS, "Illegal length, greater than maximum frame, %d\n",
			 len);
		return -EIO;
	}

	rc = FUNC20(server, flags, &credits.instance);
	if (rc)
		return rc;

	/* make sure that we sign in the same order that we send on this socket
	   and avoid races inside tcp sendmsg code that could cause corruption
	   of smb data */

	FUNC14(&server->srv_mutex);

	rc = FUNC1(ses, in_buf, &midQ);
	if (rc) {
		FUNC15(&ses->server->srv_mutex);
		/* Update # of requests on wire to server */
		FUNC0(server, &credits, 0);
		return rc;
	}

	rc = FUNC10(in_buf, server, &midQ->sequence_number);
	if (rc) {
		FUNC15(&server->srv_mutex);
		goto out;
	}

	midQ->mid_state = MID_REQUEST_SUBMITTED;

	FUNC7(server);
	rc = FUNC17(server, in_buf, len);
	FUNC6(server);
	FUNC8(midQ);

	if (rc < 0)
		server->sequence_number -= 2;

	FUNC15(&server->srv_mutex);

	if (rc < 0)
		goto out;

	rc = FUNC21(server, midQ);
	if (rc != 0) {
		FUNC16(server, &rqst, midQ);
		FUNC18(&GlobalMid_Lock);
		if (midQ->mid_state == MID_REQUEST_SUBMITTED) {
			/* no longer considered to be "in-flight" */
			midQ->callback = DeleteMidQEntry;
			FUNC19(&GlobalMid_Lock);
			FUNC0(server, &credits, 0);
			return rc;
		}
		FUNC19(&GlobalMid_Lock);
	}

	rc = FUNC11(midQ, server);
	if (rc != 0) {
		FUNC0(server, &credits, 0);
		return rc;
	}

	if (!midQ->resp_buf || !out_buf ||
	    midQ->mid_state != MID_RESPONSE_RECEIVED) {
		rc = -EIO;
		FUNC9(VFS, "Bad MID state?\n");
		goto out;
	}

	*pbytes_returned = FUNC12(midQ->resp_buf);
	FUNC13(out_buf, midQ->resp_buf, *pbytes_returned + 4);
	rc = FUNC3(midQ, server, 0);
out:
	FUNC5(midQ);
	FUNC0(server, &credits, 0);

	return rc;
}