#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct smb_com_ntransact_rsp {int /*<<< orphan*/  ParameterCount; } ;
struct kvec {char* iov_base; scalar_t__ iov_len; } ;
struct TYPE_8__ {int /*<<< orphan*/  num_acl_get; } ;
struct TYPE_9__ {TYPE_2__ cifs_stats; } ;
struct cifs_tcon {TYPE_3__ stats; int /*<<< orphan*/  ses; } ;
struct cifs_ntsd {int dummy; } ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {int /*<<< orphan*/  smb_buf_length; } ;
struct TYPE_10__ {TYPE_1__ hdr; int /*<<< orphan*/  ByteCount; void* AclFlags; int /*<<< orphan*/  Fid; scalar_t__ MaxSetupCount; void* MaxParameterCount; } ;
typedef  TYPE_4__ QUERY_SEC_DESC_REQ ;

/* Variables and functions */
 int CIFS_ACL_DACL ; 
 int CIFS_ACL_GROUP ; 
 int CIFS_ACL_OWNER ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NT_TRANSACT_QUERY_SECURITY_DESC ; 
 int FUNC0 (unsigned int const,int /*<<< orphan*/ ,struct kvec*,int,int*,int /*<<< orphan*/ ,struct kvec*) ; 
 int /*<<< orphan*/  VFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 struct cifs_ntsd* FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct cifs_tcon*,void**) ; 
 int FUNC12 (char*,char**,char**,int*,int*) ; 

int
FUNC13(const unsigned int xid, struct cifs_tcon *tcon, __u16 fid,
		  struct cifs_ntsd **acl_inf, __u32 *pbuflen)
{
	int rc = 0;
	int buf_type = 0;
	QUERY_SEC_DESC_REQ *pSMB;
	struct kvec iov[1];
	struct kvec rsp_iov;

	FUNC2(FYI, "GetCifsACL\n");

	*pbuflen = 0;
	*acl_inf = NULL;

	rc = FUNC11(NT_TRANSACT_QUERY_SECURITY_DESC, 0,
			8 /* parm len */, tcon, (void **) &pSMB);
	if (rc)
		return rc;

	pSMB->MaxParameterCount = FUNC6(4);
	/* BB TEST with big acls that might need to be e.g. larger than 16K */
	pSMB->MaxSetupCount = 0;
	pSMB->Fid = fid; /* file handle always le */
	pSMB->AclFlags = FUNC6(CIFS_ACL_OWNER | CIFS_ACL_GROUP |
				     CIFS_ACL_DACL);
	pSMB->ByteCount = FUNC5(11); /* 3 bytes pad + 8 bytes parm */
	FUNC8(pSMB, 11);
	iov[0].iov_base = (char *)pSMB;
	iov[0].iov_len = FUNC1(pSMB->hdr.smb_buf_length) + 4;

	rc = FUNC0(xid, tcon->ses, iov, 1 /* num iovec */, &buf_type,
			  0, &rsp_iov);
	FUNC3(pSMB);
	FUNC4(&tcon->stats.cifs_stats.num_acl_get);
	if (rc) {
		FUNC2(FYI, "Send error in QuerySecDesc = %d\n", rc);
	} else {                /* decode response */
		__le32 *parm;
		__u32 parm_len;
		__u32 acl_len;
		struct smb_com_ntransact_rsp *pSMBr;
		char *pdata;

/* validate_nttransact */
		rc = FUNC12(rsp_iov.iov_base, (char **)&parm,
					&pdata, &parm_len, pbuflen);
		if (rc)
			goto qsec_out;
		pSMBr = (struct smb_com_ntransact_rsp *)rsp_iov.iov_base;

		FUNC2(FYI, "smb %p parm %p data %p\n",
			 pSMBr, parm, *acl_inf);

		if (FUNC10(pSMBr->ParameterCount) != 4) {
			rc = -EIO;      /* bad smb */
			*pbuflen = 0;
			goto qsec_out;
		}

/* BB check that data area is minimum length and as big as acl_len */

		acl_len = FUNC10(*parm);
		if (acl_len != *pbuflen) {
			FUNC2(VFS, "acl length %d does not match %d\n",
				 acl_len, *pbuflen);
			if (*pbuflen > acl_len)
				*pbuflen = acl_len;
		}

		/* check if buffer is big enough for the acl
		   header followed by the smallest SID */
		if ((*pbuflen < sizeof(struct cifs_ntsd) + 8) ||
		    (*pbuflen >= 64 * 1024)) {
			FUNC2(VFS, "bad acl length %d\n", *pbuflen);
			rc = -EINVAL;
			*pbuflen = 0;
		} else {
			*acl_inf = FUNC9(pdata, *pbuflen, GFP_KERNEL);
			if (*acl_inf == NULL) {
				*pbuflen = 0;
				rc = -ENOMEM;
			}
		}
	}
qsec_out:
	FUNC7(buf_type, rsp_iov.iov_base);
	return rc;
}