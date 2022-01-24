#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct smb_hdr {int WordCount; int Uid; int Flags2; } ;
struct sess_data {int result; int /*<<< orphan*/ * func; int /*<<< orphan*/  nls_cp; TYPE_2__* iov; struct cifs_ses* ses; } ;
struct TYPE_10__ {int len; int /*<<< orphan*/ * response; } ;
struct cifs_ses {int capabilities; int Suid; TYPE_4__ auth_key; int /*<<< orphan*/ * user_name; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __u16 ;
struct TYPE_9__ {int /*<<< orphan*/  Action; } ;
struct TYPE_7__ {scalar_t__ CaseSensitivePasswordLength; scalar_t__ CaseInsensitivePasswordLength; int /*<<< orphan*/  Capabilities; } ;
struct TYPE_11__ {TYPE_3__ resp; TYPE_1__ req_no_secext; } ;
struct TYPE_8__ {char* iov_base; int iov_len; } ;
typedef  TYPE_5__ SESSION_SETUP_ANDX ;

/* Variables and functions */
 int CAP_UNICODE ; 
 int CIFS_SESS_KEY_SIZE ; 
 int EIO ; 
 int /*<<< orphan*/  FYI ; 
 int GUEST_LOGIN ; 
 int SMBFLG2_UNICODE ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (char**,struct cifs_ses*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct cifs_ses*,TYPE_5__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**,scalar_t__,struct cifs_ses*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char**,scalar_t__,struct cifs_ses*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct smb_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (struct smb_hdr*) ; 
 int FUNC12 (struct sess_data*,int) ; 
 int FUNC13 (struct sess_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct sess_data*) ; 
 int FUNC15 (struct sess_data*) ; 
 int FUNC16 (struct cifs_ses*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char**,struct cifs_ses*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(struct sess_data *sess_data)
{
	int rc = 0;
	struct smb_hdr *smb_buf;
	SESSION_SETUP_ANDX *pSMB;
	char *bcc_ptr;
	struct cifs_ses *ses = sess_data->ses;
	__u32 capabilities;
	__u16 bytes_remaining;

	/* old style NTLM sessionsetup */
	/* wct = 13 */
	rc = FUNC12(sess_data, 13);
	if (rc)
		goto out;

	pSMB = (SESSION_SETUP_ANDX *)sess_data->iov[0].iov_base;
	bcc_ptr = sess_data->iov[2].iov_base;
	capabilities = FUNC2(ses, pSMB);

	pSMB->req_no_secext.Capabilities = FUNC4(capabilities);

	/* LM2 password would be here if we supported it */
	pSMB->req_no_secext.CaseInsensitivePasswordLength = 0;

	if (ses->user_name != NULL) {
		/* calculate nlmv2 response and session key */
		rc = FUNC16(ses, sess_data->nls_cp);
		if (rc) {
			FUNC1(VFS, "Error %d during NTLMv2 authentication\n", rc);
			goto out;
		}

		FUNC10(bcc_ptr, ses->auth_key.response + CIFS_SESS_KEY_SIZE,
				ses->auth_key.len - CIFS_SESS_KEY_SIZE);
		bcc_ptr += ses->auth_key.len - CIFS_SESS_KEY_SIZE;

		/* set case sensitive password length after tilen may get
		 * assigned, tilen is 0 otherwise.
		 */
		pSMB->req_no_secext.CaseSensitivePasswordLength =
			FUNC3(ses->auth_key.len - CIFS_SESS_KEY_SIZE);
	} else {
		pSMB->req_no_secext.CaseSensitivePasswordLength = 0;
	}

	if (ses->capabilities & CAP_UNICODE) {
		if (sess_data->iov[0].iov_len % 2) {
			*bcc_ptr = 0;
			bcc_ptr++;
		}
		FUNC17(&bcc_ptr, ses, sess_data->nls_cp);
	} else {
		FUNC0(&bcc_ptr, ses, sess_data->nls_cp);
	}


	sess_data->iov[2].iov_len = (long) bcc_ptr -
			(long) sess_data->iov[2].iov_base;

	rc = FUNC15(sess_data);
	if (rc)
		goto out;

	pSMB = (SESSION_SETUP_ANDX *)sess_data->iov[0].iov_base;
	smb_buf = (struct smb_hdr *)sess_data->iov[0].iov_base;

	if (smb_buf->WordCount != 3) {
		rc = -EIO;
		FUNC1(VFS, "bad word count %d\n", smb_buf->WordCount);
		goto out;
	}

	if (FUNC9(pSMB->resp.Action) & GUEST_LOGIN)
		FUNC1(FYI, "Guest login\n"); /* BB mark SesInfo struct? */

	ses->Suid = smb_buf->Uid;   /* UID left in wire format (le) */
	FUNC1(FYI, "UID = %llu\n", ses->Suid);

	bytes_remaining = FUNC7(smb_buf);
	bcc_ptr = FUNC11(smb_buf);

	/* BB check if Unicode and decode strings */
	if (bytes_remaining == 0) {
		/* no string area to decode, do nothing */
	} else if (smb_buf->Flags2 & SMBFLG2_UNICODE) {
		/* unicode string area must be word-aligned */
		if (((unsigned long) bcc_ptr - (unsigned long) smb_buf) % 2) {
			++bcc_ptr;
			--bytes_remaining;
		}
		FUNC6(&bcc_ptr, bytes_remaining, ses,
				      sess_data->nls_cp);
	} else {
		FUNC5(&bcc_ptr, bytes_remaining, ses,
				    sess_data->nls_cp);
	}

	rc = FUNC13(sess_data);
out:
	sess_data->result = rc;
	sess_data->func = NULL;
	FUNC14(sess_data);
	FUNC8(ses->auth_key.response);
	ses->auth_key.response = NULL;
}