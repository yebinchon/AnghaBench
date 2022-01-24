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
typedef  int /*<<< orphan*/  u64 ;
struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct smb2_query_info_rsp {int /*<<< orphan*/  OutputBufferLength; int /*<<< orphan*/  OutputBufferOffset; } ;
struct kvec {scalar_t__ iov_base; } ;
struct kstatfs {int dummy; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {int dummy; } ;
typedef  int /*<<< orphan*/  FILE_SYSTEM_POSIX_INFO ;

/* Variables and functions */
 int CIFS_TRANSFORM_REQ ; 
 int /*<<< orphan*/  FS_POSIX_INFORMATION ; 
 int /*<<< orphan*/  SMB2_QUERY_INFO_HE ; 
 int FUNC0 (struct kvec*,struct cifs_tcon*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int const,struct cifs_ses*,struct smb_rqst*,int*,int,struct kvec*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct kstatfs*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_rqst*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,struct kvec*,int) ; 
 scalar_t__ FUNC10 (struct cifs_tcon*) ; 

int
FUNC11(const unsigned int xid, struct cifs_tcon *tcon,
	      u64 persistent_fid, u64 volatile_fid, struct kstatfs *fsdata)
{
	struct smb_rqst rqst;
	struct smb2_query_info_rsp *rsp = NULL;
	struct kvec iov;
	struct kvec rsp_iov;
	int rc = 0;
	int resp_buftype;
	struct cifs_ses *ses = tcon->ses;
	FILE_SYSTEM_POSIX_INFO *info = NULL;
	int flags = 0;

	rc = FUNC0(&iov, tcon, FS_POSIX_INFORMATION,
				sizeof(FILE_SYSTEM_POSIX_INFO),
				persistent_fid, volatile_fid);
	if (rc)
		return rc;

	if (FUNC10(tcon))
		flags |= CIFS_TRANSFORM_REQ;

	FUNC8(&rqst, 0, sizeof(struct smb_rqst));
	rqst.rq_iov = &iov;
	rqst.rq_nvec = 1;

	rc = FUNC1(xid, ses, &rqst, &resp_buftype, flags, &rsp_iov);
	FUNC2(iov.iov_base);
	if (rc) {
		FUNC3(tcon, SMB2_QUERY_INFO_HE);
		goto posix_qfsinf_exit;
	}
	rsp = (struct smb2_query_info_rsp *)rsp_iov.iov_base;

	info = (FILE_SYSTEM_POSIX_INFO *)(
		FUNC6(rsp->OutputBufferOffset) + (char *)rsp);
	rc = FUNC9(FUNC6(rsp->OutputBufferOffset),
			       FUNC7(rsp->OutputBufferLength), &rsp_iov,
			       sizeof(FILE_SYSTEM_POSIX_INFO));
	if (!rc)
		FUNC4(info, fsdata);

posix_qfsinf_exit:
	FUNC5(resp_buftype, rsp_iov.iov_base);
	return rc;
}