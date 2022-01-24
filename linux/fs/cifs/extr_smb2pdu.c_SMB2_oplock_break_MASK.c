#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct TYPE_2__ {int /*<<< orphan*/  CreditRequest; } ;
struct smb2_oplock_break {TYPE_1__ sync_hdr; int /*<<< orphan*/  OplockLevel; int /*<<< orphan*/  PersistentFid; int /*<<< orphan*/  VolatileFid; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int CIFS_NO_RSP_BUF ; 
 int CIFS_OBREAK_OP ; 
 int CIFS_TRANSFORM_REQ ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  SMB2_OPLOCK_BREAK ; 
 int /*<<< orphan*/  SMB2_OPLOCK_BREAK_HE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (unsigned int const,struct cifs_ses*,struct smb_rqst*,int*,int,struct kvec*) ; 
 int /*<<< orphan*/  FUNC2 (struct smb2_oplock_break*) ; 
 int /*<<< orphan*/  FUNC3 (struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rqst*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct cifs_tcon*,void**,unsigned int*) ; 
 scalar_t__ FUNC7 (struct cifs_tcon*) ; 

int
FUNC8(const unsigned int xid, struct cifs_tcon *tcon,
		  const u64 persistent_fid, const u64 volatile_fid,
		  __u8 oplock_level)
{
	struct smb_rqst rqst;
	int rc;
	struct smb2_oplock_break *req = NULL;
	struct cifs_ses *ses = tcon->ses;
	int flags = CIFS_OBREAK_OP;
	unsigned int total_len;
	struct kvec iov[1];
	struct kvec rsp_iov;
	int resp_buf_type;

	FUNC0(FYI, "SMB2_oplock_break\n");
	rc = FUNC6(SMB2_OPLOCK_BREAK, tcon, (void **) &req,
			     &total_len);
	if (rc)
		return rc;

	if (FUNC7(tcon))
		flags |= CIFS_TRANSFORM_REQ;

	req->VolatileFid = volatile_fid;
	req->PersistentFid = persistent_fid;
	req->OplockLevel = oplock_level;
	req->sync_hdr.CreditRequest = FUNC4(1);

	flags |= CIFS_NO_RSP_BUF;

	iov[0].iov_base = (char *)req;
	iov[0].iov_len = total_len;

	FUNC5(&rqst, 0, sizeof(struct smb_rqst));
	rqst.rq_iov = iov;
	rqst.rq_nvec = 1;

	rc = FUNC1(xid, ses, &rqst, &resp_buf_type, flags, &rsp_iov);
	FUNC2(req);

	if (rc) {
		FUNC3(tcon, SMB2_OPLOCK_BREAK_HE);
		FUNC0(FYI, "Send error in Oplock Break = %d\n", rc);
	}

	return rc;
}