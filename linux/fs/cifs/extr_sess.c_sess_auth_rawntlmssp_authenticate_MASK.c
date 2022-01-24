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
typedef  int u16 ;
struct smb_hdr {int Uid; int WordCount; int Flags2; } ;
struct sess_data {int result; int /*<<< orphan*/ * func; int /*<<< orphan*/  nls_cp; TYPE_2__* iov; struct cifs_ses* ses; } ;
struct TYPE_9__ {unsigned char* response; } ;
struct cifs_ses {int Suid; unsigned char* ntlmssp; TYPE_4__ auth_key; } ;
typedef  int __u16 ;
struct TYPE_8__ {int /*<<< orphan*/  SecurityBlobLength; int /*<<< orphan*/  Action; } ;
struct TYPE_6__ {int /*<<< orphan*/  SecurityBlobLength; } ;
struct TYPE_10__ {TYPE_3__ resp; TYPE_1__ req; } ;
struct TYPE_7__ {unsigned char* iov_base; int iov_len; } ;
typedef  TYPE_5__ SESSION_SETUP_ANDX ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FYI ; 
 int GUEST_LOGIN ; 
 int SMBFLG2_UNICODE ; 
 int /*<<< orphan*/  VFS ; 
 int FUNC0 (struct sess_data*) ; 
 int FUNC1 (unsigned char**,int*,struct cifs_ses*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char**,int,struct cifs_ses*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**,int,struct cifs_ses*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct smb_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (struct smb_hdr*) ; 
 int FUNC10 (struct sess_data*,int) ; 
 int FUNC11 (struct sess_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct sess_data*) ; 
 int FUNC13 (struct sess_data*) ; 

__attribute__((used)) static void
FUNC14(struct sess_data *sess_data)
{
	int rc;
	struct smb_hdr *smb_buf;
	SESSION_SETUP_ANDX *pSMB;
	struct cifs_ses *ses = sess_data->ses;
	__u16 bytes_remaining;
	char *bcc_ptr;
	unsigned char *ntlmsspblob = NULL;
	u16 blob_len;

	FUNC2(FYI, "rawntlmssp session setup authenticate phase\n");

	/* wct = 12 */
	rc = FUNC10(sess_data, 12);
	if (rc)
		goto out;

	/* Build security blob before we assemble the request */
	pSMB = (SESSION_SETUP_ANDX *)sess_data->iov[0].iov_base;
	smb_buf = (struct smb_hdr *)pSMB;
	rc = FUNC1(&ntlmsspblob,
					&blob_len, ses, sess_data->nls_cp);
	if (rc)
		goto out_free_ntlmsspblob;
	sess_data->iov[1].iov_len = blob_len;
	sess_data->iov[1].iov_base = ntlmsspblob;
	pSMB->req.SecurityBlobLength = FUNC3(blob_len);
	/*
	 * Make sure that we tell the server that we are using
	 * the uid that it just gave us back on the response
	 * (challenge)
	 */
	smb_buf->Uid = ses->Suid;

	rc = FUNC0(sess_data);
	if (rc)
		goto out_free_ntlmsspblob;

	rc = FUNC13(sess_data);
	if (rc)
		goto out_free_ntlmsspblob;

	pSMB = (SESSION_SETUP_ANDX *)sess_data->iov[0].iov_base;
	smb_buf = (struct smb_hdr *)sess_data->iov[0].iov_base;
	if (smb_buf->WordCount != 4) {
		rc = -EIO;
		FUNC2(VFS, "bad word count %d\n", smb_buf->WordCount);
		goto out_free_ntlmsspblob;
	}

	if (FUNC8(pSMB->resp.Action) & GUEST_LOGIN)
		FUNC2(FYI, "Guest login\n"); /* BB mark SesInfo struct? */

	if (ses->Suid != smb_buf->Uid) {
		ses->Suid = smb_buf->Uid;
		FUNC2(FYI, "UID changed! new UID = %llu\n", ses->Suid);
	}

	bytes_remaining = FUNC6(smb_buf);
	bcc_ptr = FUNC9(smb_buf);
	blob_len = FUNC8(pSMB->resp.SecurityBlobLength);
	if (blob_len > bytes_remaining) {
		FUNC2(VFS, "bad security blob length %d\n",
				blob_len);
		rc = -EINVAL;
		goto out_free_ntlmsspblob;
	}
	bcc_ptr += blob_len;
	bytes_remaining -= blob_len;


	/* BB check if Unicode and decode strings */
	if (bytes_remaining == 0) {
		/* no string area to decode, do nothing */
	} else if (smb_buf->Flags2 & SMBFLG2_UNICODE) {
		/* unicode string area must be word-aligned */
		if (((unsigned long) bcc_ptr - (unsigned long) smb_buf) % 2) {
			++bcc_ptr;
			--bytes_remaining;
		}
		FUNC5(&bcc_ptr, bytes_remaining, ses,
				      sess_data->nls_cp);
	} else {
		FUNC4(&bcc_ptr, bytes_remaining, ses,
				    sess_data->nls_cp);
	}

out_free_ntlmsspblob:
	FUNC7(ntlmsspblob);
out:
	FUNC12(sess_data);

	 if (!rc)
		rc = FUNC11(sess_data);

	/* Cleanup */
	FUNC7(ses->auth_key.response);
	ses->auth_key.response = NULL;
	FUNC7(ses->ntlmssp);
	ses->ntlmssp = NULL;

	sess_data->func = NULL;
	sess_data->result = rc;
}