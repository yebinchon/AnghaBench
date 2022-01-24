#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct smb2_read_rsp {int DataOffset; int /*<<< orphan*/  DataLength; } ;
struct smb2_read_plain_req {int /*<<< orphan*/  PersistentFileId; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct cifs_ses {int /*<<< orphan*/  Suid; } ;
struct cifs_io_parms {unsigned int length; int /*<<< orphan*/  offset; TYPE_1__* tcon; } ;
struct TYPE_3__ {int /*<<< orphan*/  tid; struct cifs_ses* ses; } ;

/* Variables and functions */
 int CIFS_LARGE_BUFFER ; 
 int CIFS_LOG_ERROR ; 
 unsigned int CIFS_MAX_MSGSIZE ; 
 int CIFS_NO_BUFFER ; 
 int CIFS_SMALL_BUFFER ; 
 int CIFS_TRANSFORM_REQ ; 
 int EIO ; 
 int ENODATA ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  SMB2_READ_HE ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int FUNC1 (unsigned int const,struct cifs_ses*,struct smb_rqst*,int*,int,struct kvec*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb2_read_plain_req*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rqst*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (void**,unsigned int*,struct cifs_io_parms*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 

int
FUNC12(const unsigned int xid, struct cifs_io_parms *io_parms,
	  unsigned int *nbytes, char **buf, int *buf_type)
{
	struct smb_rqst rqst;
	int resp_buftype, rc;
	struct smb2_read_plain_req *req = NULL;
	struct smb2_read_rsp *rsp = NULL;
	struct kvec iov[1];
	struct kvec rsp_iov;
	unsigned int total_len;
	int flags = CIFS_LOG_ERROR;
	struct cifs_ses *ses = io_parms->tcon->ses;

	*nbytes = 0;
	rc = FUNC8((void **)&req, &total_len, io_parms, NULL, 0, 0);
	if (rc)
		return rc;

	if (FUNC9(io_parms->tcon))
		flags |= CIFS_TRANSFORM_REQ;

	iov[0].iov_base = (char *)req;
	iov[0].iov_len = total_len;

	FUNC7(&rqst, 0, sizeof(struct smb_rqst));
	rqst.rq_iov = iov;
	rqst.rq_nvec = 1;

	rc = FUNC1(xid, ses, &rqst, &resp_buftype, flags, &rsp_iov);
	rsp = (struct smb2_read_rsp *)rsp_iov.iov_base;

	if (rc) {
		if (rc != -ENODATA) {
			FUNC3(io_parms->tcon, SMB2_READ_HE);
			FUNC0(VFS, "Send error in read = %d\n", rc);
			FUNC11(xid, req->PersistentFileId,
					    io_parms->tcon->tid, ses->Suid,
					    io_parms->offset, io_parms->length,
					    rc);
		} else
			FUNC10(xid, req->PersistentFileId,
				    io_parms->tcon->tid, ses->Suid,
				    io_parms->offset, 0);
		FUNC4(resp_buftype, rsp_iov.iov_base);
		FUNC2(req);
		return rc == -ENODATA ? 0 : rc;
	} else
		FUNC10(xid, req->PersistentFileId,
				    io_parms->tcon->tid, ses->Suid,
				    io_parms->offset, io_parms->length);

	FUNC2(req);

	*nbytes = FUNC5(rsp->DataLength);
	if ((*nbytes > CIFS_MAX_MSGSIZE) ||
	    (*nbytes > io_parms->length)) {
		FUNC0(FYI, "bad length %d for count %d\n",
			 *nbytes, io_parms->length);
		rc = -EIO;
		*nbytes = 0;
	}

	if (*buf) {
		FUNC6(*buf, (char *)rsp + rsp->DataOffset, *nbytes);
		FUNC4(resp_buftype, rsp_iov.iov_base);
	} else if (resp_buftype != CIFS_NO_BUFFER) {
		*buf = rsp_iov.iov_base;
		if (resp_buftype == CIFS_SMALL_BUFFER)
			*buf_type = CIFS_SMALL_BUFFER;
		else if (resp_buftype == CIFS_LARGE_BUFFER)
			*buf_type = CIFS_LARGE_BUFFER;
	}
	return rc;
}