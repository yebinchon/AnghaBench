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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct smb_rqst {unsigned int rq_nvec; struct kvec* rq_iov; } ;
struct smb2_set_info_rsp {int dummy; } ;
struct kvec {scalar_t__ iov_base; } ;
struct cifs_tcon {int /*<<< orphan*/  tid; struct cifs_ses* ses; } ;
struct cifs_ses {int /*<<< orphan*/  Suid; int /*<<< orphan*/  server; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int CIFS_TRANSFORM_REQ ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SMB2_SET_INFO_HE ; 
 int /*<<< orphan*/  FUNC0 (struct smb_rqst*) ; 
 int FUNC1 (struct cifs_tcon*,struct smb_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void**,unsigned int*) ; 
 int FUNC2 (unsigned int const,struct cifs_ses*,struct smb_rqst*,int*,int,struct kvec*) ; 
 int /*<<< orphan*/  FUNC3 (struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct smb2_set_info_rsp*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvec*) ; 
 struct kvec* FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_rqst*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct cifs_tcon*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(const unsigned int xid, struct cifs_tcon *tcon,
	       u64 persistent_fid, u64 volatile_fid, u32 pid, u8 info_class,
	       u8 info_type, u32 additional_info, unsigned int num,
		void **data, unsigned int *size)
{
	struct smb_rqst rqst;
	struct smb2_set_info_rsp *rsp = NULL;
	struct kvec *iov;
	struct kvec rsp_iov;
	int rc = 0;
	int resp_buftype;
	struct cifs_ses *ses = tcon->ses;
	int flags = 0;

	if (!ses || !(ses->server))
		return -EIO;

	if (!num)
		return -EINVAL;

	if (FUNC8(tcon))
		flags |= CIFS_TRANSFORM_REQ;

	iov = FUNC6(num, sizeof(struct kvec), GFP_KERNEL);
	if (!iov)
		return -ENOMEM;

	FUNC7(&rqst, 0, sizeof(struct smb_rqst));
	rqst.rq_iov = iov;
	rqst.rq_nvec = num;

	rc = FUNC1(tcon, &rqst, persistent_fid, volatile_fid, pid,
				info_class, info_type, additional_info,
				data, size);
	if (rc) {
		FUNC5(iov);
		return rc;
	}


	rc = FUNC2(xid, ses, &rqst, &resp_buftype, flags,
			    &rsp_iov);
	FUNC0(&rqst);
	rsp = (struct smb2_set_info_rsp *)rsp_iov.iov_base;

	if (rc != 0) {
		FUNC3(tcon, SMB2_SET_INFO_HE);
		FUNC9(xid, persistent_fid, tcon->tid,
				ses->Suid, info_class, (__u32)info_type, rc);
	}

	FUNC4(resp_buftype, rsp);
	FUNC5(iov);
	return rc;
}